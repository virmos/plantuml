
Bubble element ---> API Connector --> API Gateway        ---> lambda function           -------> DynamoDB
            bubble plugin            define route /api          zip function in aws runtime     Create policy on DB
# First meeting
API Gateway
Execution roles
    AWSLambdaBasicExecutionRole -> upload logs to Cloudwatch
    AWSLambdaSQSQueueExecutionRole -> read from SQS
    AWSLambdaVPCAccessExecutionRole -> deploy lambda functions in VPC

User story:
    store data from bubble -> AWS instance
    all data stores in Lab1

Data format: varies across labs
    doctor, room
    patient data
    - username
    - room (booking)
    transactional data
    x-ray images
US region

Bubble authentication
    requests -> lab database

DynamoDB serverlesss mode -> pay as you use
# Second meeting
Fast Cursor
Numerical index

page_sized == 10
total_elements = 10.000

1000 pages
999 pages
-> caching
array []

AWS Hypercompliance


