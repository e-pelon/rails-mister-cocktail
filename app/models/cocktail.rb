class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true
  mount_uploader :photo, PhotoUploader

end


#############ORIGINAL METHOD FROM LE WAGON LECTURE NOTES#############
# class Product < ApplicationRecord
#   mount_uploader :photo, PhotoUploader
# end
