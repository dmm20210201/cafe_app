class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :cafe_image
end
