class Marca < ApplicationRecord

    has_many :modelos
    has_many :mobiles

end
