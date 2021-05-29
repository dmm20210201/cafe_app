class FavoritesController < ApplicationController

  def create
    cafe_image = CafeImage.find(params[:cafe_image_id])
    favorite = current_user.favorites.new(cafe_image_id: cafe_image.id)
    favorite.save
    redirect_to cafe_images_path(cafe_images)
  end

  def destroy
    cafe_image = CafeImage.find(params[:cafe_image_id])
    favorite = current_user.favorites.find_by(cafe_image_id: cafe_image.id)
    favorite.destroy
    redirect_to cafe_images_path(cafe_images)
  end

end
