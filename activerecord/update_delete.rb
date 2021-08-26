
require './main'

User.delete_all

User.create(name: "ageha", age: 20)
User.create(name: "watari", age: 11)
User.create(name: "konishi", age: 33)
User.create(name: "saruwatari", age: 45)

# UPDATE
User.where(id: 1).update(age: 26)
pp User.select("id, name, age").all

# DELETE = destroy
User.where("age > 30").delete_all
pp User.select("id, name, age").all()
