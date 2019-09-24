class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]
  
  def new
    @image = Image.new
  end

  def index
    @images = Image.all
  end
  
  def show
  end
  
  def edit
  end

  def create
    @image = Image.new(image_params)
    if @image.save 
      redirect_to(images_path, flash: { notice: "Image is uploaded successfully" })
    else
      render "new"
    end
  end
  
  def update
    if @image.update(image_params)
      redirect_to(images_path, flash: { notice: "Image is updated successfully" })
    else
      render "edit"
    end
  end
    
  def destroy
    @image.destroy
    redirect_to(images_path, flash: { notice: "Image is destroyed successfully" })
  end
  
  private
    def set_image
      @image = Image.find(params[:id])
    end
    
    def image_params
      params.require(:image).permit(:image, :name)
    end
end
