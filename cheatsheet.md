---
export_on_save:
  html: true
---
# C4 CHEATSHEET

```
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Container.puml
Container:
    Container(alias, label, ?techn, ?descr, ?sprite, ?tags, ?link)
    ContainerDb
    ContainerQueue
    Container_Ext
    ContainerDb_Ext
    ContainerQueue_Ext
    Container_Boundary(alias, label, ?tags, ?link)

!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Context.puml
System: 
    Person(alias, label, ?descr, ?sprite, ?tags, ?link, ?type)
    Person_Ext
    System(alias, label, ?descr, ?sprite, ?tags, ?link, ?type)
    SystemDb
    SystemQueue
    System_Ext
    SystemDb_Ext
    SystemQueue_Ext
    Boundary(alias, label, ?type, ?tags, ?link)
    Enterprise_Boundary(alias, label, ?tags, ?link)
    System_Boundary
    sprite: person, person2, robot, robot2

!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Component.puml
Component
    Component(alias, label, ?techn, ?descr, ?sprite, ?tags, ?link)
    ComponentDb
    ComponentQueue
    Component_Ext
    ComponentDb_Ext
    ComponentQueue_Ext

!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Deployment.puml
Deployment:
    Deployment_Node(alias, label, ?type, ?descr, ?sprite, ?tags, ?link)
    Node(alias, label, ?type, ?descr, ?sprite, ?tags, ?link): short name of Deployment_Node()
    Node_L(alias, label, ?type, ?descr, ?sprite, ?tags, ?link): left aligned Node()
    Node_R(alias, label, ?type, ?descr, ?sprite, ?tags, ?link): right aligned Node()
```

# SEQUENCE CHEATSHEET
```
Entities:
    participant     a rectangle
    actor           a person
    database
    entity          M(model)
    control         C(controller)
    collection
    queue
    boundary
```

```
participant "User A" as a <<Interface>>
participant "User B" as b <<Interface>>
a -> b: call
return result
```

```
->              autoactivate on
-> message !!   delete target
-> message **   create target
-> message ++   activate target

== ==           comment in link
```

```
group #LightBlue/LightPink if condition [comment]
end
```

```
loop 1000 times
end
```

```
note left of
note right of 
note over
```

# Markdown configuration
```
# settings.json
"plantuml.server": "http://localhost:8080/svg",
"plantuml.render": "PlantUMLServer",
"markdown-preview-enhanced.plantumlServer": "http://localhost:8080/svg",

# diagram.md
---
export_on_save:
  html: true
---
```
