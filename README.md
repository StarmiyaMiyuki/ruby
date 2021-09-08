
# ruby

言わずもがな日本発祥で日系Web企業御用達の言語。1995年に誕生、JavaやLispの良いとこ取りをした動的型付け言語

# Syntax

## 出力

```ruby
# 末尾に改行なし
print "hoge"

# 末尾に改行あり
puts "hoge"

# debug用
p "hoge"
```

## データ型

```ruby
数値: Integer
文字列: String # ""は特殊文字, 式展開(変数)が使える
true: TrueClass
false: FalseClass
nil: NilClass
配列: [1,true, "hoge"]
ハッシュ: {key => "value"}
# valueがシンボルの場合
ハッシュ: {key: value}
時刻: Time.now
```

### 型調査

```ruby
# class check
"obj".class

# search method
"obj".methods
```

### 破壊的メソッド

```ruby
name = "tarou"

name.upcase! # "TAROU"

# 真理値変換
name.include?("t") # true
```

### 配列

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

# has?
k.has_key?("key1") # true
k.has_value?("value3") # false
```

### 型変換

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

### 文字列フォーマット

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

## 制御フロー

### 演算子

```ruby
等価: ==
不等: !=
論理和: &&
論理積: ||
否定: !
```
### if文

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

### case文

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

### while文

```ruby
i = 0

while i < 5
  puts i
  i += 1
end
```

### times文

for i in range(num)と同じ

```ruby
5.times do |i|
  puts "#{i}"
end
```

### for文

```ruby
a = [1,2,3]

for i in a
  puts i
end
# 1, 2, 3
```

### each文

timesのArray, Hashバージョン

```ruby
a = [1,2,3]

a.each do |i|
  puts i
end
# 1, 2, 3
```

### loop文

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

## 関数

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
  
  def initialize(name)
    @name = name # インスタンス変数
  end

  def hello()
    puts "hello #{@name}"
  end

end

hitoe = User.new("hitoe")
hitoe.hello # hello hitoe
```

### アクセサ

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

