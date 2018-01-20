class Mark < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates_inclusion_of :value, in: 1..5
  validates_presence_of :post_id, :user_id
end
