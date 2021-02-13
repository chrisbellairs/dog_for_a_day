class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :dogs, dependent: :destroy
  has_many :bookings, dependent: :destroy

  validates :first_name, :last_name, :address, presence: true
  validates :postcode, format: { with: /\A([A-Z][A-HJ-Y]?[0-9][A-Z0-9]? ?[0-9][A-Z]{2}|GIR ?0A{2}\z)/ }
end
