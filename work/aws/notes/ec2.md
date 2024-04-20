# ***Overview***
Infra as service
    Renting virtual machine EC2 (Elastic Compute Cloud)
    Store on EBS (virtual drive)
    Distribute load across ELB (machines)
    Scale using ASG (auto scaling group)
## Sizing
OS, CPU, RAM
Storage
    network attached (EBS, EFS)
    hardware (EC2 instance store)
Firewall
    Security group
Bootstrap script -> runs with root
    EC2 userdata
## Installation
EC2 dashboard
Instances
    Amazon machine image
## Types
Convertible Reserved Instances
Dedicated hosts
Spot instances

- General purpose
    Batch processing workloads
    Media transcoding
    High performance web servers
    High performance computing
    Machine learning
    Gaming server
- Memory Optimized
    High performance RDS
    Distributed web scale cache stores
    In memory databases
- Storage optimized
    Online transaction processing
    RDS & NoSQL
    Cache for in memory database
    Data warehouse app
    Distributed file system
## Security Group
Inbound/outbound  whitelist/blacklist
## Instance connect

# ***Instance-store volume***
## Types
max IOPS > 300.000
# Usage
caching

# ***EBS volume***
## Definitions
Elastic Block Store is a network drive (communicate with instance through network)
    persist data after terminate
    bound to AZ and instance
## Usage
Snapshot
Retention (recycle bin)
## Types
gp2/gp3 (SSD): general purpose
    gp2 IO increases if disk size increases, (max IOPS of 16,000 or equivalent 5334 GB)
    gp3 IO idependent of disk size
io1/io2 (SSD): low latency - high throughput - database workloads
    io1 IO idependent of disk size (max IOPS 64.000)
    io2                            (max IOPS 256.000)
stl (HDD): low cost - throughput intensive
scl (HDD): lowest cost
## Multi-attach
All can be attached to multiples EC2 AZ
Only io1/io2 can be attached to multiple AZ
    others: snapshot -> restore

# **EFS volume***
## Definitions
Elastic file system
    Mounted to EC2 (via Security Group)
    Expensive: 3xgp2
## Usage
Content management
Webserving
Data sharing
Wordpress

Handle 1000ccu, 10GB/s
## Configurations
Performance mode
    General Purpose: webserver, cms
    Max I/O: higher latency, throughput, parallel
Throughput mode
    Bursting: throughput scales with storage size (1TB == 50MiB/s)
    Provision: throughput regardless of storage size (user input)
    Elastic: scale up/down based on workloads, upto 3GiB/s read, 1GiB write
## Storage types
Standard (no access for 60 days) ---> EFS-IA (infrequent access) ---> remove
                                move to                          x days
## Multi-attach
Can be mounted in multiple AZ

# ***AMI***
## Definitions
Amazon Machine Image (custom EC2 instance)
    built for 1 region
    can be copied across regions
