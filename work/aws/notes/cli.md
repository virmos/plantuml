# ***OVERVIEW***
## Steps
Console Home -> Services -> IAM
Create User
Add user to group
Add policies to group
## Side panel
Access Management
    User groups
    Users
    Roles
    Policies
    Account settings
## Setup policies
SID  1 
Effect  allow
Principal   arn:aws:iam:123:root
Action      s3:GetObject
Resource    arn:aws:s3::mybucket/*

Alice -> group admin -> policy 1
      -> group dev   -> policy 2

### Create new policy
Service: IAM
Effect, Action, Resource

# ***MFA***
## Definition
MFA = password known + security device owned
-> If password is stolen, the account is not compromised
## Example
Google authenticator
## Steps
Account settings

# ***Access AWS***
## AWS management console
password + MFA
## AWS CLI
### Installing
MSI installer
### Create access keys
Access Management -> Users -> Access keys

aws configure
    AWS Access Key ID [None]: AKIAIOSFODNN7EXAMPLE
    AWS Secret Access Key [None]: wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
    Default region name [None]: us-west-2

aws iam list-users

aws ec2 create-security-group --group-name my-sg --description "My security group"
    {
        "GroupId": "sg-903004f8"
    }
### AWS CloudShell
Remote aws cli
## AWS SDK
access key

# ***IAM roles***
EC2 instance roles
Lambda function roles
CloudFormation roles
## Steps
Roles -> Create role
Choose AWS service: EC2

# ***IAM security tools***
IAM credentials report
    aws configure
    aws iam list-users
    aws iam list-access-keys
    aws iam get-access-key-last-used