#***Definitions***'
RDS is a managed service
1. Advantage
point in-time restore
monitoring dashboard
storage backend by EBS
2. Disadvantage
cannot ssh to rds instance
# ***Dashboard***
Databases
Query Editor
Performance Insights
Automated Backups
Reserved Instances
# ***Security***
1. Types
AWS KMS At-rest encryption (encrypt data on disk)
In-flight encryption (encrypt sent data)
IAM Authentication
Security Groups
2. Steps
Create snapshot of DB
Tick enable encryption
Restore DB from that snapshot
# ***Scale***
Read replicas
    up to 15
    different connection string
    asynchronous replication
Multi-AZ has same DNS name
    same connection string
    synchronous replication
-> combination of Read replicas and Multi-AZ
-> regitional outage -> promoted as new production database
# ***ElastiCache***
1. Types
serverless
custom
location
AWS cloud
on premises
    on AWS outpost
2. Scale
Without cluster mode -> 5 replicas
## ***Performance***
PUT Caching
    Lazy Loading
        Query -> Save to cache
    Write Through
        Write to DB -> Write to cache
        1. Pros
        - data in cache is never stale -> quick read
        - write penalty and read penalty (each write requires 2 calls)
        2. Cons
        - cache churn (lots of cache data will never be read)
    -> these twos are combined
    Write Back
DELETE Caching (cache eviction)
    timetolive
    least recently used
    memory is full