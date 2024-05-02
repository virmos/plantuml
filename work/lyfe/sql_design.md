---
export_on_save:
  html: true
---
```plantuml
@startuml
' all tables are provided with created date, updated date
skinparam linetype ortho

annotation AddressData {
    address_1 : text
    address_2 : text
    city : text
    state : text
    postcode : text
}

annotation OrderStatusEnum {
    Pending
    Ordered
    Shipped
}

annotation ItemTypeEnum {
    Kit
}

annotation StatusEnum {
    LabDecline
    MDDecline
    Pending
    Activated
    InProgress
    Final
}

annotation TypeEnum {
    KA
}

annotation BarCode {
    Format "LF%s-%s%s"
    + order_id
    + item_type
    + item_id
}

entity "Patient" as patient {
  *patient_id : number <<sequence>>
  --
  *email : text
  first_name : text
  middle_name : text
  last_name : text
  phone : number
  gender : text
  address_data : AddressData
}

entity "Order" as order {
  *order_id : number <<sequence>>
  uniqueorderid? : number <<generated>>
  status : OrderStatusEnum
  isfinished? : boolean
  is_expedited_shipping: boolean
  cart: []Item
  --
  *patient_id : number <<FK>>
}

entity "Item" as item {
  *item_id : number <<sequence>>
  item_type : ItemTypeEnum
  type : TypeEnum
  barcode : BarCode <<generated>>
  price : number
  status : StatusEnum
  files : []File
  dateactivated : DateTime ISO8601
  collectiondate : DateTime ISO8601
  finaldate : DateTime ISO8601
  --
  *patient_id : number <<FK>>
}

entity "OrderItems" as order_items {
  *_id : number <<sequence>>
  quantity : number
  --
  *item_id : number <<FK>>
  *order_id : number <<FK>>
}

entity "File" as file {
  *file_id : number <<sequence>>
  name : text
  size : number
  s3_key : text
}

patient ||..|{ order
patient ||..|{ item

order ||..|{ order_items
item ||..|{ order_items

item ||..|{ file

@enduml
```
Access Patterns                         Key conditions                  Filter condition
GET patient data
GET(paging)kits by barcode
                by status
                by order_id
                by patient_id
                between start_date&end_date 


Order
    cart
        +code
        +quantity
        +purchase_price





