class CafeImagesController < ApplicationController

  def new
    @cafe_image = CafeImage.new
  end

  def create
    cafe_image = CafeImage.new(cafe_image_params)
    cafe_image.save
    redirect_to cafe_images_path
  end

  def index
    @cafe_images = CafeImage.all
  end

  def destroy
  end

  private

  def cafe_image_params
    params.require(:cafe_image).permit(:shop_name, :image, :caption)
  end

end
