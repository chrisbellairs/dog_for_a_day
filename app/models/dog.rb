class Dog < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :name, uniqueness: { scope: :user }
  validates :biography, :breed, :age, :good_with_children, presence: true
  validates :size, :walk, :energy, :friendly, presence: true, inclusion: { in: (1..10) }, numericality: { only_integer: true }
end
