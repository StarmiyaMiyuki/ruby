
言わずもがな日本発祥で日系Web企業御用達の言語。1995年に誕生、JavaやLispの良いとこ取りをした動的型付け言語。
2025年にかけて緩やかに終焉を予感させている。日系企業では技術的負債としての負の遺産になりそうだが、モノリシックアプリでは機能性は十分にある

## Output

```ruby
var = :hoge
# without break line
print var # "hoge"

# with break line. puts stands for put string. it returns All of them as String
# return nil
puts :var # "hoge"

# for debug. it is same as puts Object.inspect
p :var # :hoge
```

# Data Type

```ruby
Integer: 1
String: "foo" # "" can use special character, #{variable}
Symbol: :bar
TrueClass: true
FalseClass: false. this class are only false and nil
NilClass: nil
Array: [1,true, "hoge"]
Hash: {key => value}
# if key is symbol
Hash: {symbolKey: value}
Date: Time.now
```

## Type Check

```ruby
# type check
"obj".class

# search method
"obj".methods
```

### interpolation

interpolation can be only used in ""

```ruby
s = "foo"
puts "string var is #{s}"
# "string var is foo"
```

## Useful methods

```ruby
"foo".length # 3
# judge variable as nil
"".nil? # false
# judge variable as ["", []]
"   ".empty? # false
# judge variable as [" ", [], false, nil]
"   ".blank? # true
# judge variable as truthy
"string".present?
```

### Destructive Methods

```ruby
name = "tarou"

name.upcase! # "TAROU"

# convert boolean
name.include?("t") # true
```

## Array

```ruby
a = [1,2,3,4,5]
# sort
a.sort # [1,2,3,4,5]
# reverse
a.reverse # [5,4,3,2,1]
# shuffle
a.shuffle # shuffled array
# map
a.map do |num|
  num * 2
end # [2,4,6,8,10]

# slice. it include last index unlike Python
a[1..3] # [2,3,4]
# push
a << 6 # [1,2,3,4,5,6]
# pop
a.pop(num) # 末尾からnum分除去
# length
a.length # 5
a.size # 5
# range
for i in 0..3 # range(4)
  puts i
end # 0, 1, 2, 3
# split
s = "taskattawa"
s.split("a") # ["t", "sk", "tt", "w"]
```

## Hash

```ruby
h = {"key1" => "value1", "key2" => "value2"}
# it is same as {:key1 => "value1", :key2 => "value2"}
hSimbol = {key1: "value1", key2: "value2"}
# keys
h.keys()
# values
h.values()
# has? return true or false
h.has_key?("key1") # true
h.has_value?("value3") # false
# pop
h.delete("key2") # delete {"key2" => "value2"}

h.each do |key, value| # require 2 values
  puts key, value
end
```

### Type Convert

```ruby
# to Integer
String.to_i()
# to Float
String.to_f()
# to String
Integer.to_s()
# to Array
Hash.to_a()
# to Hash
Array.to_h()
# to opposite Boolean
!Object
# to Boolean
!!Object
```

### String Format

```ruby
# String
name = "hitoe"
puts "%s" % name
# Integer
i = 3
puts "%d" % i
# Float
pi = 3.14
puts "%f" % pi
```

# Control Flow

### Operands

```ruby
等価: ==
不等: !=
論理和: &&
論理積: ||
否定: !
```

## Condition

### if

if文はconditionがtrueであれば自動でbreakされる

```ruby
height = 167

if height > 165
  puts "great"
elsif height > 160
  puts "good"
else
  puts "hmm..."
end
```

### case

SQLライクな構文

```ruby
signal = gets.chomp # \nを除去

case signal
when "red"
  puts "stop!"
when "green"
  puts "go!"
when "yellow"
  puts "caution"
else
  puts "wrong"
end
```

### while

```ruby
i = 0

while i < 5
  puts i
  i += 1
end
```

## Loop

### for

```ruby
a = [1,2,3]

for i in a
  puts i
end
# 1, 2, 3
```

### times method

for i in range(num)と同じ

```ruby
5.times do |i|
  puts "#{i}"
end
# 0, 1, 2, 3, 4

# block
5.times { |i| puts "#{i}" }
```

### each method

timesのArray, Hashバージョン

```ruby
a = [1,2,3]

a.each do |i|
  puts i
end
# 1, 2, 3

# block
a.each { |i| puts i }
```

### loop

use `next` instead of continue

```ruby
i = 0
loop do
  if i == 5
    i += 1
    next
  end
  puts i
  i += 1
  if i == 7
    break
  end
end
```

## Exception Handling

- begin: try
- rescue: except
- ensure: finally

```ruby
a = ["satou", 3, 0]

for x in a
  begin
    puts 2 / x
  rescue => e
    puts e
  ensure
    puts "hoge"
  end
end
```

# Function(methods)

you can omit last return word, because ruby return value or `nil implicitly`

```ruby
def hello(name)
  puts "hello #{name}"
  return name
end

name = hello(name)
```

# Class

All of ruby's variable is object because ruby is `object oriented`

```ruby
# check class
s = String.new("foo")
s.class # String
s.class.superclass # Object
s.class.superclass.superclass # BasicObject
```

```ruby
class User < Object # inherit
  
  @@count = 0 # class variable
  VERSION = 1.1 # User::VERSIONでアクセス可能

  def initialize(name)
    @name = name # instance variable
    @@count += 1
  end

  def self.info() # class method
    puts "User info"
  end

  def hello()
    puts "hello #{@name}"
  end

end

# create instance
hitoe = User.new("hitoe")
hitoe.hello # hello hitoe
```

## Accessor

クラス変数やインスタンス変数はインスタンスメソッドからしか参照できないが、アクセサを宣言すると変数の権限を変更し、インスタンス変数自身から参照することが可能

```ruby
class User < Object
  
  # apply to instance var
  attr_accessor :name # getter + setter
  attr_reader :name # getter

  # class var
  @@age = 20

  # instance method
  def initialize(name)
    # instance var
    @name = name
  end

  def hello()
    puts "hello #{@name}"
  end
end

hitoe = User.new('hitoe')
hitoe.name # hitoe
# equivalent
hitoe.instance_variable_get(:@name)
# for class var
User.class_variable_get(:@@age)
```

## アクセス権

- public: どこからでもアクセス可能。通常のメソッド
- protected
- private: 同じインスタンスでないとアクセス不可

## Mix-in

多重継承問題(スパゲッティ継承)の解決策として考案。以下の特性を持つ補助クラス
- it is abstract class that cannot make instance alone
- ruby cannot inherit multiply by class but Mix-in class

```ruby
module Man
  
  def info()
    puts "have a mascle"
  end
end

class Human

  include Man
end

Human.new.info() # can be called as instance methods
```

# Module

```ruby
# import other module files
require './filePath'
```




