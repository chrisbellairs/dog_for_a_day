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

  def walk_length
    if self.walk < 4
      "Short walks"
    elsif self.walk < 7
      "Average walks"
    else
      "Long walks"
    end
  end

  def dog_size
    if self.size < 4
      "Small dog"
    elsif self.size < 7
      "Medium dog"
    else
      "Large dog"
    end
  end

  def dog_energy
    if self.energy < 4
      "Low"
    elsif self.energy < 7
      "Moderate"
    else
      "High"
    end
  end

  def dog_friendly
    if self.friendly < 4
      "Not good with others"
    elsif self.friendly < 7
      "Not sure how I feel about others"
    else
      "Loves others"
    end
  end

  def dog_gwc
    self.good_with_children ? "Yes" : "No"
  end
end
