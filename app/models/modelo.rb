class Modelo < ApplicationRecord

  

  belongs_to :marca
  has_many :mobiles
end
