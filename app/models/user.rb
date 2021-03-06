class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :dogs, dependent: :destroy
  has_many :bookings, dependent: :destroy

  has_one_attached :photo



  validates :first_name, :last_name, :address, presence: true
  validates :terms_and_conditions, acceptance: true
end
