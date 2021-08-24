class Post < ApplicationRecord
    has_many :comments
    # @post.comments
    validates :title, presence: true,
        length: { minimum:1 , message: 'Please write something !'}
    validates :body, presence: true


end
