class Comment < ApplicationRecord
  belongs_to :post
  validates :body, presense: true

end
