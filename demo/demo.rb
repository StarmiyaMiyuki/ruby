# ダックタイピング
# 継承を使わないので、依存関係がない
# しかし、Parentはインスタンスが特定のメソッドを持つことを期待している

# ImportUserTable.factory(format)

# class ImportUserTable
#   def execute(format)
#     case format
#     when "email"
#       Email.new.factory
#     when "tunag_id"
#       TunagId.new.factory
#     end
#   end

#   def self.create
#     "Parent creating is success!"
#   end
# end


# class Email
#   def factory
#     ImportUserTable.create
#     puts "factory A"
#   end
# end

# class TunagId
#   def factory
#     validate
#     ImportUserTable.create
#     puts "factory B"
#   end

#   private

#   def validate
#     puts "validated"
#   end
# end

# i = ImportUserTable.new
# email = Email.new
# t_id = TunagId.new

# i.execute("email")
# i.execute("tunag_id")

# テンプレートメソッドパターン

class ImportUserTable
  def factory
    puts "please override me"
  end

  def execute(format)
    case format
    when "email"
      Email.new.factory
    when "tunag_id"
      TunagId.new.factory
    end
  end

  def self.create
    "Parent creating is success!"
  end
end


class Email < ImportUserTable
  def factory
    ImportUserTable.create
    puts "factory A"
  end
end

class TunagId < ImportUserTable
  def factory
    validate
    ImportUserTable.create
    puts "factory B"
  end

  private

  def validate
    puts "validated"
  end
end

i = ImportUserTable.new
email = Email.new
t_id = TunagId.new

i.execute("email")
i.execute("tunag_id")
