class Quest < ApplicationRecord
  has_many :parties, dependent: :destroy
  has_many :characters, through: :parties
  validates :name, :description, :reward, presence: true
  validates :reward, numericality: { only_integer: true, in: (10..1000) }

  QUEST_IMGS = [
    "https://cdn-icons-png.flaticon.com/512/7139/7139531.png",
    "https://images.unsplash.com/photo-1601617904227-cd515a2bb6bb?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHNjcm9sbHxlbnwwfHwwfHx8MA%3D%3D",
    "https://images.unsplash.com/photo-1567910640027-4029c4d8e9e0?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8b2xkJTIwbWFwfGVufDB8fDB8fHww",
    "https://images.unsplash.com/photo-1636075219672-a422660ce589?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ]
end
