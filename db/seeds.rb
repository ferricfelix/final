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
iMac.purchase_id = "2"
iMac.value = "400"
iMac.save

iMac = Item.new
iMac.serial = "113"
iMac.model_id = "1"
iMac.manufacturer_id = "1"
iMac.purchase_id = "3"
iMac.value = "400"
iMac.save

iMac = Item.new
iMac.serial = "114"
iMac.model_id = "1"
iMac.manufacturer_id = "1"
iMac.purchase_id = "4"
iMac.value = "400"
iMac.save

iMac = Item.new
iMac.serial = "115"
iMac.model_id = "1"
iMac.manufacturer_id = "1"
iMac.purchase_id = "4"
iMac.value = "400"
iMac.save

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
