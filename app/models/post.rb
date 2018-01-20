class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :marks

  validates_presence_of :title, :body, :user_id
  validates :title,
            uniqueness: true,
            length: { maximum: 255 }
end