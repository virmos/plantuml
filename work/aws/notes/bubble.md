bubble api connector
aws api gateway -> lambda function -> amazon rds database
lab1,2,3
 
EST -> UTC -> VN timezone
0h     4h       11h

# ***Bubble***
## Elements
- Design
    Page, Container
        Custom states, Events, Actions
    Container
        Group, repeating groups
        Table, Popups
    Visual elements
        Text, Button, Icon, Link, Image
    Input forms
        Uploads file to AWS
- Data
    Data types and fields
        Data source: Name = John/Search for Users
        Data rules
- Security
    is_admin: perms...
    is_owner: perms...
    is_others: perms...
        add other to invited_users

- Event --triggers-->Workflows:
series of actions:
    Parameters
    Return values: can be used in next action

- Workloads:
    30$ -> 200K workload units
    99$ -> 750K workload units
    Top watts/unit cost:
        Scheduled API Workflows
        Database Trigger Workflows
        Recurring Workflows
        - 
        Workflow
        - 
        File upload
        - 
        Fetch data
        - CREATE: 0.5W
        - READ DB: 0.3W
        - Agregates: 0.6W
        Call plugin: 0.3W
        Server side workflow actions: 0.6W
        Inbound API calls
        - Workflow API: 0.01W
        Outbound API calls
        - External API: 0.1W
        Backend events: retrieve data from database to display on the screen
            Authenticate users
            Process payments
            Upload images, videos
        Client-side workflows: complete user interactions
        Requests Third-party APIs

- Bubble API: 
created after you define database fields
external apps call bubble api
    DataAPI (need privacy rules)
    WorkflowAPI

- API Connector
should set "sending the call from browser"
bubble calls external api
can also connect to Bubble API
 
- Oauth2 security:
client -> external_api/_authorize
    argument: client_id
    redirect_url: bubbleapps
    returns: authorization code
exteral_api -> callback_url/_token
    client_id, client_secret, auth_code
    returns: access_token
