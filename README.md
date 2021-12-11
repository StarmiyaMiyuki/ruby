
# Ruby

言わずもがな日本発祥で日系Web企業御用達の言語。1995年に誕生、JavaやLispの良いとこ取りをした動的型付け言語

# Syntax

## Output

```ruby
# without break line
print "hoge"

# with break line
puts "hoge"

# for debug. it returns All of them as String. it is same as p Object.inspect
p "hoge"
```

## Data Type

```ruby
数値: Integer
文字列: String # "" can use special character, #{variable}
true: TrueClass
false: FalseClass
nil: NilClass
Array: [1,true, "hoge"]
Hash: {key => value}
# if key is symbol
Hash: {key: value}
Date: Time.now
```

### Type Check

```ruby
# type check
"obj".class

# search method
"obj".methods
```

### 破壊的メソッド

```ruby
name = "tarou"

name.upcase! # "TAROU"

# convert boolean
name.include?("t") # true
```

### Array

```ruby
a = [1,2,3,4,5]

# slice
a[1..3] # [2,3,4]

# push
a << 6 # [1,2,3,4,5,6]

# pop
a.pop(num) # 末尾からnum分除去

# length
a.size # 5

# range
for i in 0..3 # range(4)
  puts i
end
# 0, 1, 2, 3
```

### Hash

```ruby
k = {"key1" => "value1", "key2" => "value2"}

# k_simbol = {:key1 => "value1", :key2 => "value2"}
k_simbol = {key1: "value1", key2: "value2"}

# keys
k.keys()

# values
k.values()

# has? return true or false
k.has_key?("key1") # true
k.has_value?("value3") # false
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

## Control Flow

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

### for

```ruby
a = [1,2,3]

for i in a
  puts i
end
# 1, 2, 3
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

continueではなく**next**

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

```ruby
{
  begin: try,
  rescue: except,
  ensure: finally,
}

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

## Function(Method)

rubyのメソッドには暗黙の戻り値があるから、returnを省略しても最後に設置した変数か、さもなくばnilが返される

```ruby
def hello(name)
  puts "hello #{name}"
  return name
end

name = hello(name)
```

## Class

```ruby
class User < Object # 継承
  
  @@count = 0 # クラス変数
  VERSION = 1.1 # User::VERSIONでアクセス可能

  def initialize(name)
    @name = name # インスタンス変数
    @@count += 1
  end

  def self.info() # Class method
    puts "User info"
  end

  def hello()
    puts "hello #{@name}"
  end

end

hitoe = User.new("hitoe")
hitoe.hello # hello hitoe
```

### Accessor

インスタンス変数はインスタンスメソッド等インスタンス空間でしか使用できないが、アクセサを宣言すると変数の権限を変更することができる

```ruby
class User < Object
  
  attr_accessor :name # getter + setter
  attr_reader :name # getter

  def initialize(name)
    @name = name # self.name = name
  end

  def hello()
    puts "hello #{@name}"
  end

end
```

### アクセス権

- public: どこからでもアクセス可能。通常のメソッド
- protected
- private: 同じインスタンスでないとアクセス不可

### Mix-in

多重継承問題(スパゲッティ継承)の解決策として考案。以下の特性を持つ補助クラス

- 単体でインスタンスを作らない抽象クラス
- Mix-inクラス以外のクラスから多重継承しない

```ruby
module Man
  
  def info()
    puts "have a mascle"
  end
end

class Human

  include Man
end

Human.new.info() # インスタンスメソッドとして呼び出し可能
```

