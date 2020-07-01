class Mobile < ApplicationRecord
  belongs_to :marca
  belongs_to :modelo
  
  mount_uploader :imagen, PicturesUploader
  
end
