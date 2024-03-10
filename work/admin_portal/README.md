---------------------------CUSTOMER-----------------------------------
Giải thích:
Với thống kê lưu lượng:
Các khoảng thời gian được tính bằng 2 trường: Thời gian bắt đầu, thời gian kết thúc, duration
VD: start_time: 10h20', finish_time: 10h30', duration=60s
+ Tại điểm 10:20:00' hiển thị 10 request -> Tức trong khoảng 10:20:00' -> 10:21:00' trung bình có 10 request tấn công
duration do frontend gửi lên, được tính bằng độ rộng của biểu đồ và khoảng thời gian chọn

Với các object json:
+ access_log: bao gồm tất cả request gửi đến backend được hệ thống WAF log ra
+ metrics_log: bao gồm tất cả request gửi đến backend được hệ thống DDOSL7(nginx) log ra
+ tấn công ddos: bao gồm các cuộc tấn công ddos được hệ thống DDOSL7 phát hiện
+ tấn công waf: bao gồm các cuộc tấn công waf được hệ thống WAF phát hiện

Màn Dashboard
FrontEnd (Tấn công DDoSL7)
- Đợt tấn công: Count documents của object "tấn công ddos.json"
- Tấn công lớn nhất đã ghi nhận: Max trường "peak_throughput.rps" của object "tấn công ddos.json"

FrontEnd (Tấn công khai thác lỗ hổng)
- Đợt tấn công: Count documents "cuộc tấn công waf.json"
- Request bị chặn: Sum trường "n_blocked_request" của object "cuộc tấn công waf.json"

FrontEnd (Các kiểu tấn công phổ biến)
- Các kiểu tấn công phổ biến: Sum+Aggregate trường "attack_type" của object "tấn công waf.json"
- Các kiểu tấn công phổ biến: Sum+Aggregate trường "attack_type" của object "tấn công ddos.json"

FrontEnd (Thống kê lưu lượng theo số request)
Thời gian là trường timestamp+timezone của object "metrics.json"
- Request: (Avg trường n_request trong khoảng duration) / (trường time_interval) của object "metrics.json"
- Throughput: Avg trường (n_bytes_in) trong khoảng duration của object "metrics.json"
- Connection: Avg trường (n_waiting_connection+n_used_connections+n_reject_connections) trong khoảng duration của object "metrics.json"

FrontEnd (Top IP truy cập)
- Địa chỉ IP: Select trường `srcip`(Aggregate srcip và Sort n_request của (object "access_log.json") join (object "metrics.json"))
- Số lượng request: Select trường n_request (Aggregate srcip và Sort n_request của (object "access_log.json") join (object "metrics.json"))

FrontEnd (Top website bị tấn công)
- Tên website: Select trường website_name (Aggregate website_name và Sort (((finish_time-uptime)*throughput.rps) as n_request) của object "tấn công ddos.json")
- Số lượng request: Select trường n_request (Aggregate website_name và Sort (((finish_time-uptime)*throughput.rps) as n_request) của object "tấn công ddos.json")

FrontEnd (Bản đồ truy cập theo quốc gia)
- Top quốc gia truy cập: Select country_name, n_request (Sum trường n_request (Aggregate trường country_name của object "metrics.json"))
cần nghiệp vụ bổ sung trường country_name vào metrics.json

FrontEnd (Thống kê Top)
- Top tấn công theo IP nguồn:
    Count (Aggregate trường srcip) của object "cuộc tấn công waf.json" +
    Count (Aggregate trường srcip) của object "tấn công ddos.json"
- Top tấn công theo quốc gia:
    Count (Aggregate trường country_name) của object "cuộc tấn công waf.json"+
    Count (Aggregate trường country_name) của object "tấn công ddos.json"
cần nghiệp vụ bổ sung trường country_name vào object "cuộc tấn công waf.json"
cần nghiệp vụ bổ sung trường country_name vào object cuộc tấn công ddos.json"

- Top tấn công theo website: Count (Aggregate trường website_name) của object "cuộc tấn công waf.json"









---------------------------ADMIN-----------------------------------
**Màn hình Danh sách website**
- Nhà phân phối: Select trường name của object "distributor.json"
- Cụm: Select trường name của object "waf.json"
- Tên miền: Select trường identity của object "customer_service_unit.json"
- SSL/TLS: Select trường httpsconfstatus của object "websitetbl.json"
- Tài khoản khách hàng: Select trường customer_name của object "customer_service.json"
- Tên gói: Select trường name của object "package.json"
- Ngày tạo: Select trường c_created_date của object "customer_service.json"
- Hạn sử dụng: Select trường end_date của object "customer_service.json"
- Trạng thái DNS: Select trường dns_pointed của object "customer_service_unit.json"
- Cổng: Select trường port của (Select subdomains của object "customer_service_unit.json")
- Trạng thái: trường active của object "customer_service_unit.json"
- SSL/TLS: Select trường httpsconfstatus của object "websitetbl.json": True/False + valid_to của object "ssl.json"


**Validate permission ADMIN**
# Problem description:
Setup repo?
    python2.7, ubuntu 16.04
    code very hard to refractor
    should not reuse old api as requests can be replaced by aggregations
Develop admin portal in repo cloudrity_be_v3?
    throughput will be slow as admin/customer operations can be processed in parallel: request -> flask api -> processing ... -> response

# Solution:
create new repo

# Tasks
routing
    //- route request with actor: handle by admin_fe
    //- route request with Authorization header token: handle by admin_fe
login with CAS
    //- session: handle by admin_fe
before_request
    - save current_user with actor
require_oauth (authorization)
    - get Authorization header
    - check token through iam: remote.validate_token_request
require_perm (authentication)
    - get current_user
    - check perm through iam: perms.check_permission
require_roles (authentication)
    - get current_user
    - check roles: set(current_user.roles) & set(ADMIN_ROLES)

# Unit test:
authorization:
- login portal admin v2
- create api test_oauth that use @require_oauth
- burpsuite capture request + change request url localhost:{admin_fe_port}/admin_waf/api/v2/test_oauth
- print Authorization headers at admin_fe, check if function validate_token_request return true

require_perm:
- login portal admin v2
- create api test_perm use @require_perm
- burpsuite capture request + change request url localhost:{admin_fe_port}/admin_waf/api/v2/test_perm
- 

require_roles:
- login portal admin v2
- create api test_roles use @require_roles
- burpsuite capture request + change request url localhost:{admin_fe_port}/admin_waf/api/v2/test_roles
- print if current_user.roles == admin roles in MongoDB

# Notes
admin_fe: authorization header, current_user
author: authorization header
authen: current_user
- perm
- roles

admin_api/v1/customer-service
admin_waf/api/v1/customer-service

+ User login -> Admin session
+ User call API
        admin_client_v3 -> admin_fe -> + admin_be   (handle admin user info)
                                        admin_wp_be (handle website details)
                                        admin_be_v3 (CRUD websites)




