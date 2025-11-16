class Character < ApplicationRecord
  has_many :parties
  has_many :quests, through: :parties
  validates :name, :weapon, presence: true
end
