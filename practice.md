---
export_on_save:
  html: true
---
```plantuml
@startuml
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Container.puml
LAYOUT_WITH_LEGEND()

Person(customer, "Customer", "A person with the bank, with personal account")

@enduml
```
