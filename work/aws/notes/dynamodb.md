# ***DYNAMODB***
## DynamoDB Cost Plan
read: 10^6 -> 0.25$
write: 10^6 -> 1.25$

On-Demand
    10KB = 3 block 4KB
    read request units: 4KB
    - transactional: 2 unit
    - strongly consistent: 1 unit
    - eventual consistent: 1/2 unit
    write request units: 1KB
    - transactional: 2 unit
    - standard: 1 unit

Streams read: 1MB

## DynamoDB Structure
Table:
    Partition: 10GB - support 3000 reads, 1000 writes
        Collection: same partition key, close together
            Partition key: hash key
            Range Keys: sort key
        -> 1 request: get all documents with same partition key

## DynamoDB Limits
Paging
    1MB limit/scroll (before apply filtering)
    Need to maintain external data structure for total element return
    - e.g: tables: kits, total_per_page
    total_per_page['kits'] = 102 -> total documents in table kits is 102
    all insert will update this value -> need to handle fail insert

# ***Time estimation***
Setup aws, lambda function, dynamodb
Design DB
11 APIs
1 API stripe integration
1 API GET orders with kits (paging, filter, nested documents)


# ***Timeline***
1. 04/04 - 04/08
Project management: Planning & Design
- High level design, reviews and approval
- Low level design, reviews and approval
- Prepare implementation plan

2. 04/09 - 04/14
- Setting up Amazon Lambda function
+ Create Policy on Database
+ Create Excution role
+ Create Lambda Authorizer
+ Create default handler
- Setting up Amazon API Gateway
+ Create method and route
+ Integrate with lambda
- Setting up Amazon DynamoDB    
+ Create tables in DynamoDB
+ Create partition key and sort key

3. 04/15 - 04/21
- Setup Amazon API Gateway schema validations
- Setup Error handlers
- API create new patient
- API fetch patient data
- API create order and kits
- API activate kit by barcode (first activation and second activation)
- API fake requests

4. 04/22 - 04/29
- API get kits
- API get orders with kits
- API stripe webhook
- API edit kit by barcode
- API check kit by barcode
- API edit patient by barcode
- API change order status

