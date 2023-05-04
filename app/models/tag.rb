class Tag < ApplicationRecord
  has_many :bromances
  has_many :potins, through: :bromances
end
