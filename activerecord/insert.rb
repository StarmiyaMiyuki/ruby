
require './main'

# initialize
User.delete_all
Comment.delete_all

# insert
user = User.new
user.name = "tanaka"
user.age = 23
user.save

# hashで作成
user = User.new(:name => "hayashi", :age => 32)
user.save

# user.new + user.save
User.create(name: 'saitou', age: 40)

user = User.new do |u|
    u.name = "takanashi"
    u.age = 18
end
user.save

Comment.create(user_id: 1, body: "hoge 1")
Comment.create(user_id: 1, body: "hoge 2")
Comment.create(user_id: 2, body: "fuga 3")

user = User.includes(:comments).find(1)
pp user.comments
