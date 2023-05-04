class Potin < ApplicationRecord
  belongs_to :user
  has_many :bromances
  has_many :tags, through: :bromances
end
