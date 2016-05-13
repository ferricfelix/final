# Inventory
Final Project for MPCS5255

### Initial Model Overview
The general idea here is to implement an inventory management system that in it's basic form tracks equipment and users.
Inventory control systems seem to be a popular example topic, but this one, if done properly, could actually be a useful tool for my workplace. We currently use a custom PHP/MySQL system that suffers from poor data model design, and is therefore severely contstrained in what it can do.

####Person
This is our client or user. I called it person, to separate the thing that we care about that are unique to the individual from things that are attributes of their relationships
```
Person
  # person_id is automatically generated
  first_name: text
  last_name: text
  nickname: text
```

####Department
Academic Department or Unit.
```
Department
  name: text
  type_id
  phone: text
  address: text
  created_at: datetime
  updated_at: datetime
```

####Employee
Models the `Person` to `Department` relationship. Note that this where the majority of the information about the `Person` is stored. this design should allow individual who hold multiple appointments to exist in the system. 
```
Employee
  department_id
  person_id
  title: text
  supported: boolean
  phone: text
  address: text
  created_at: datetime
  updated_at: datetime
```

####Equipment
This object can be anything from a computer to a printer to a personal mobile device.
```
Equipment
  serial: text
  model_id
  manufacturer_id
  purchase_id
  value: integer
  created_at: datetime
  updated_at: datetime
```

####Manufacturer
Just your basic Dell, Apple, HP

```
Manufacturer
  name: text
```

####Model
Stores the equipment model information. I think it's better to make the model it's own object, since it allows for convenient drop down menus and avoids free typing. Dirty data is the plague of my existence.
```
Model
  name: text
  manufacturer_id
```

####Purchase
Describes the purchase price and tracks the order number for the item.
Helps distinguish between current and original value.
```
Purchase
  order: text
  date: date #date of the purchase
  price: integer
  created_on: date #date the purchase object was created
```

####User
models the relationship between an employee and a particular piece of equipment assigned to that role
```
User
  employee_id
  equipment_id
  type_id
  created_at: datetime
  updated_at: datetime
```
  
#### Type
Type refers to the type/status of the object or relationship. The idea here is to avoid creating multiple 'supported' type fieds, and be able to run broad queries across multiple objects using the same property name
```
Type
  status: text
```

####Owner
Models the relationship between a department and a particular piece of equipment. Used for cases when an item is communal property, and to determine property ownership for insurance purposes.
```
Owner
  department_id
  equipment_id
  type_id
  created_at: datetime
  updated_at: datetime   
```



