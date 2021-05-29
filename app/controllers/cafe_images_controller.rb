class CafeImagesController < ApplicationController

  def new
    @cafe_image = CafeImage.new
  end

  def create
    cafe_image = CafeImage.new(cafe_image_params)
    cafe_image.user_id = current_user.id
    cafe_image.save
    redirect_to cafe_images_path
  end

  def index
    @cafe_images = CafeImage.page(params[:page]).reverse_order
  end

  def edit
    @cafe_image = CafeImage.find(params[:id])
  end

  def update
    cafe_image = CafeImage.find(params[:id])
    cafe_image.update(cafe_image_params)
    redirect_to cafe_images_path(cafe_image)
  end

  def destroy
    cafe_image = CafeImage.find(params[:id])
    cafe_image.destroy
    redirect_to cafe_images_path
  end

  private

  def cafe_image_params
    params.require(:cafe_image).permit(:shop_name, :image, :caption)
  end

end
