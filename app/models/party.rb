class Party < ApplicationRecord
  belongs_to :quest
  belongs_to :character
end
