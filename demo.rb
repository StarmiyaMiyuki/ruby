
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

