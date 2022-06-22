
class Human

  # accessor
  attr_accessor :class_info
  attr_accessor :name
  attr_accessor :age

  # class area
  info = "this is class var"
  # class var
  @@class_info = "class info"

  # instance area
  def initialize(name, age)
    # instance var
    @name = name
    @age = age
  end

  # class method
  def self.bow()
    puts "hello! it's class method"
    puts "#{@@class_info}"
  end

  # instance method
  def say_hello()
  puts "my name is #{@name}, I'm #{@age}"
  puts "#{@@class_info}"

  end
end

puts Human.class_variable_get(:@@class_info)
Human.bow()
hitoe = Human.new('hitoe', 27)
hitoe.say_hello()
puts hitoe.name
