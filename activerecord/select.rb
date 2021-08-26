
require './main'

# 全件削除
User.delete_all

User.create(name: "ageha", age: 22)
User.create(name: "watari", age: 11)
User.create(name: "konishi", age: 33)
User.create(name: "saruwatari", age: 45)
User.create(name: "akemi", age: 18)

# 全件select
pp User.all

# 最初 = first, 最後 = last
# ORDER BY, DESC
pp User.select("id, name, age").last

# WHERE, AND, OR, NOT
pp User.find(id=1)
pp User.select("id, name, age").where(:age => 20..29)
pp User.select("id, name, age").where("age >= 20").where("age <= 30")
pp User.select("id, name, age").where("age <= 20 or age >= 30")
pp User.select("id, name, age").where.not(age: 33)

# placeholder
min = 20
max = 30
pp User.select("id, name, age").where("age >= ? and age <= ?", min, max)

# 部分一致 = LIKE
pp User.select("*").where("name like ?", "%a")

# ORDER BY
pp User.select("id, name, age").order("name desc")

# LIMIT
pp User.select("id, name, age").order(:age).limit(2)

