
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

型調査

```ruby
# class check
"obj".class

# search method
"obj".methods
```



