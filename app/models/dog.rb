class Dog < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, uniqueness: { scope: :user }
  validates :biography, :breed, :age, :size, :good_with_children, :walk, :energy, :friendly, presence: true
end
