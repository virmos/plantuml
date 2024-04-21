#***Definitions***
service_provider | service_name | data_type_name
Parameters
Mapping
Output
Import/Export

Cloudformation stackets
Cloudformation changesets
    CAPABILITY_NAMED_IAM
    CAPABILITY_AUTO_EXPAND
    InsufficientCapabilitiesException

# ***Intrinsic functions***
Ref
GetAtt
FindInMap
    InstanceType: !FindInMap [EnvironmentToInstanceType, !Ref 'EnvironmentName', instanceType]
Join
    [IPAddress=, !Ref 'IPAddress'] -> IPAdrress=10.0.0.1
ImportValue
Export
    Must be unique within region
Base64
Conditions (Equals, If, Not)

# ***Custom resource***
delete S3 even if it's not empty

# ***Policies***
## DeletionPolicy
Delete (not work on S3 if not empty)
Retain
Snapshot
## StackServiceRole
## StackPolicy
Effect: Allow
Action: Update:*
Princial: *
Resource: *

Effect: Deny
Action: Update:*
Princial: *
Resource: LogicalResourceId/ProductionDatabase

# ***Common***
AWS::AccountId
AWS::Region
AWS::StackId