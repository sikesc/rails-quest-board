class Quest < ApplicationRecord
  has_many :parties, dependent: :destroy
  has_many :characters, through: :parties
  validates :name, :description, :reward, presence: true
  validates :reward, numericality: { only_integer: true, in: (10..1000) }
end
