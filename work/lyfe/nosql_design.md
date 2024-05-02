| Access Patterns |Table/GSI/LSI|Key Condition|Filter Expression| Example|
| :---        | :---         | :---     | :---    |:---|
|Get patient for a given patientId|Table|PK=patientId **and** SK=patientId|-|PK="pt#12345" **and** SK="pt#12345"|
|Get order for a given orderId|Table|PK=orderId|-|PK="o#12345" **and** SK="o#12345"|
|Get all kits for a given orderId|Table|PK=orderId **and** SK=barcode|-|PK="o#12345" **and** SK=**begins_with**"LF#"|
|Get kit for a given kitId|GSI1|PK=barcode **and** SK=barcode|-|PK="LF#12345" **and** SK="LF#12345"|
|Get all orders with kits|GSI1|PK=barcode|-|PK=**begins_with**"LF#"|
|Get kits for a given orderId for a given date range for a given status|GSI1|PK=barcode **and** SK=**between** start_date **and** end_date|filter=status|PK=**begins_with**"LF#" **and** SK=**between** "2020-06-21T00:00:00" **and** "2020-06-21T23:59:00"|
|Get all kits for a given patientId|GSI2|PK=patientId **and** SK=**between** start_date **and** end_date|-|PK="pt#12345" **and** SK=**between** "pt#2020-06-011T00:00:00" and "pt#2020-06-15T23:59:00"|
|Get kits for a given patientId for a given date range for a given status|GSI2|PK=patientId **and** SK=**between** start_date **and** end_date|filter=status|PK="pt#12345" **and** SK=**between** "2020-06-21T00:00:00" **and** "2020-06-21T23:59:00"|
