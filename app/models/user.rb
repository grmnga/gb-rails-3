class User < ApplicationRecord
  before_save { self.email = email.downcase }

  validates :name, :email, presence: true
  validates :name, length: { maximum: 16, minimum: 2 }
  validates :name, :email, uniqueness: true
end
