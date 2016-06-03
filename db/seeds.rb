Employee.delete_all

agent1 = Employee.new
agent1.department_id = "1"
agent1.person_id = "1"
agent1.title = "Support Monkey"
agent1.supported = TRUE
agent1.save

agent2 = Employee.new
agent2.department_id = "1"
agent2.person_id = "2"
agent2.title = "Sleeper Agent"
agent2.supported = TRUE
agent2.save

agent3 = Employee.new
agent3.department_id = "2"
agent3.person_id = "2"
agent3.title = "Agent 003" 
agent3.supported = FALSE
agent3.save

Person.delete_all

Gene = Person.new
Gene.first_name = "Eugene"
Gene.last_name = "Shumkov"
Gene.nickname = "Smidgeons"
Gene.save

Boris = Person.new
Boris.first_name = "Boris"
Boris.last_name = "Molotov"
Boris.nickname = "Hammmer"
Boris.save


Department.delete_all

HumanitiesComputing = Department.new
HumanitiesComputing.name = "Humanities Computing"
HumanitiesComputing.phone = "1-800-humcomp"
HumanitiesComputing.address = "1 Saville Row"
HumanitiesComputing.save

KGB = Department.new
KGB.name = "KGB"
KGB.phone = "9-81-Lubyanka"
KGB.address = "1 Lubyanka"
KGB.save


Item.delete_all

MacBookPro = Item.new
MacBookPro.serial = "200"
MacBookPro.model_id = "2"
MacBookPro.manufacturer_id = "1"
MacBookPro.purchase_id = "1"
MacBookPro.value = "400"
#these are populated when automatically with current DateTime
#Is this the EZ gem working the magic, or Rails?
# iMac.created_at = "DateTime.now" 
# iMac.updated_at = "DateTime.now"
MacBookPro.save

iMac = Item.new
iMac.serial = "111"
iMac.model_id = "1"
iMac.manufacturer_id = "1"
iMac.purchase_id = "1"
iMac.value = "400"
#these are populated when automatically with current DateTime
#Is this the EZ gem working the magic, or Rails?
# iMac.created_at = "DateTime.now" 
# iMac.updated_at = "DateTime.now"
iMac.save

iMac = Item.new
iMac.serial = "112"
iMac.model_id = "1"
iMac.manufacturer_id = "1"
iMac.purchase_id = "1"
iMac.value = "400"
iMac.save

iMac = Item.new
iMac.serial = "113"
iMac.model_id = "1"
iMac.manufacturer_id = "1"
iMac.purchase_id = "1"
iMac.value = "400"
iMac.save

iMac = Item.new
iMac.serial = "114"
iMac.model_id = "1"
iMac.manufacturer_id = "1"
iMac.purchase_id = "1"
iMac.value = "400"
iMac.save

iMac = Item.new
iMac.serial = "115"
iMac.model_id = "1"
iMac.manufacturer_id = "1"
iMac.purchase_id = "1"
iMac.value = "400"
iMac.save


User.delete_all

user1 = User.new
user1.item_id = "1"
user1.employee_id = "1"
user1.save

user2 = User.new
user2.item_id = "1"
user2.employee_id = "2"
user2.save

user3 = User.new
user3.item_id = "3"
user3.employee_id = "1"
user3.save

user4 = User.new
user4.item_id = "4"
user4.employee_id = "2"
user4.save

user5 = User.new
user5.item_id = "5"
user5.employee_id = "2"
user5.save

user6 = User.new
user6.item_id = "1"
user6.employee_id = "2"
user6.save



Owner.delete_all

owner = Owner.new
owner.department_id = "1"
owner.item_id = "1"
owner.save


owner = Owner.new
owner.department_id = "2"
owner.item_id = "4"
owner.save


owner = Owner.new
owner.department_id = "2"
owner.item_id = "5"
owner.save

Type.delete_all

supported = Type.new
supported.status = "Supported"
supported.save

not_supported = Type.new
not_supported.status = "Not Supported"
not_supported.save

Manufacturer.delete_all

m = Manufacturer.new
m.name = "Apple"
m.save

m = Manufacturer.new
m.name = "Kamaz"
m.save

Model.delete_all

m = Model.new
m.name = "iMac"
m.save

m = Model.new
m.name = "MacBook Pro"
m.save

m = Model.new
m.name = "Briefcase Bomb"
m.save

Purchase.delete_all

p = Purchase.new
p.order = "G109456"
p.date = "06/02/2016"
p.price = "500000"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
