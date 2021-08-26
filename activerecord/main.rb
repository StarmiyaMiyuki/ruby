
require 'active_record'
require 'pp'
require 'logger' # SQL分のlogを表示

# Time.zone_default = Time.find_zone! 'Tokyo'
ActiveRecord::Base.default_timezone = :local

ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.establish_connection(
    "adapter" => "sqlite3",
    "database" => "./myapp.db"
)

class User < ActiveRecord::Base
    # 1 to n なので複数形
    has_many :comments, dependent: :destroy
    # presence = NOT NULL
    validates :name, :age, presence: true

    # self.method = classmethod
    def self.top(num)
        select("id, name, age").order(:age).limit(num)
    end
    # scope
    # scope :top3, -> {select("id, name, age").order(:age).limit(3)}
end

class Comment < ActiveRecord::Base
    # 1 on 1 なので単数形
    belongs_to :user
end
