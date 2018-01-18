class Post < ApplicationRecord
  belongs_to :user
  validates_presence_of :title, :body, :user_id
  validates :title,
            uniqueness: true,
            length: { maximum: 255 }
end