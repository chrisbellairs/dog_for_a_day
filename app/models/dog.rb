class Dog < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  has_many :bookings


  validates :name, uniqueness: { scope: :user }
  validates :biography, :breed, :age, :good_with_children, presence: true
  validates :size, :walk, :energy, :friendly, presence: true, inclusion: { in: (1..10) }, numericality: { only_integer: true }
end
