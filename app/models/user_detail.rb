class UserDetail < ApplicationRecord
  belongs_to :user
  validates :image, uniqueness: true
  validates :user,:description, :image, presence: true
end
