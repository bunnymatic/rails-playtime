class ImagesController < ApplicationController
  before_action :set_image, only: %i[show edit update destroy]

  def index
    @images = Image.all
  end

  def show
  end

  def new
    @image = Image.new
  end

  def edit
  end

  def create
    @image = Image.new(image_params)

    if @image.save
      redirect_to @image, notice: "Image was successfully created."
    else
      render :new
    end
  end

  def update
    if @image.update(image_params)
      redirect_to @image, notice: "Image was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @image.destroy
    redirect_to images_url, notice: "Image was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_image
    @image = Image.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def image_params
    params.require(:image).permit(:name, :image)
  end
end
