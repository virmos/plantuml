---
export_on_save:
  html: true
---
```plantuml
@startuml
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Container.puml
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Deployment.puml

LAYOUT_WITH_LEGEND()

title Container diagram for Internet banking

Person(customer, "Personal Banking Customer", "A customer of the bank, with personal bank accounts")
System_Boundary(c1, "Internet banking", "System") {
    Container(app, "Application", "Angular", "Generate static content")
    Container(web, "Single-Page App", "Angular", "Frontend website")
    Container(mobile, "Mobile App", "React Native", "Frontend app")
    ContainerDb(mongodb, "Database", "Mongodb", "Database connections")
    Container(api, "Api Application", "Python/Flask", "Api endpoints")
}

System_Ext(mail_system, "E-mail system", "The internal Microsoft Exchange e-mail system.")
System_Ext(banking_system, "Mainframe Banking System", "Stores all of the core banking information about customers, accounts, transactions, etc.")

Rel(customer, app, "Uses", "https")
Rel(customer, web, "Uses", "https")
Rel(customer, mobile, "Uses", "https")

Rel_Neighbor(app, web, "Generate")
Rel(web, api, "Uses", "Json/HTTP")
Rel(mobile, api, "Uses", "Json/HTTP")
Rel_Back(customer, mail_system, "Sends e-mails to")

Rel_Back_Neighbor(mongodb, api, "Read/Write")
Rel_Neighbor(api, banking_system, "Uses")
Rel_Back(mail_system, api, "Uses", "SMTP-async")

@enduml
```

```plantuml
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Container.puml
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Deployment.puml
!define osaPuml https://raw.githubusercontent.com/Crashedmind/PlantUML-opensecurityarchitecture2-icons/master
!include osaPuml/Common.puml
!include osaPuml/User/all.puml
!include osaPuml/Hardware/all.puml
!include osaPuml/Misc/all.puml
!include osaPuml/Server/all.puml
!include osaPuml/Site/all.puml

title Detail diagram for Internet banking

Person(customer, "Customer", $sprite="osa_user_blue")
Container(cus_website, "Backend", "Customer's website")
Deployment_Node(firewall, "Firewall") {
    Node_L(lbl4_ext, "LBL4 VTNET",  "n nodes...")
    Node(lbl7_ext, "LBL7 VTNET")
}

Deployment_Node(cloudrity, "HHT cluster") {
    Container(nginx, "ANTIDDOS & LBL7", "nginx", "Internal Reverse Proxy")
}

Rel(customer, lbl4_ext, "Access")
Rel_Back(cus_website, lbl4_ext, "Return")
Rel(lbl4_ext, lbl7_ext, "")
Rel(lbl7_ext, cloudrity, "")
SHOW_LEGEND()

```
