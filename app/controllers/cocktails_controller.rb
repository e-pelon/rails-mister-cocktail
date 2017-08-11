class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]
  def index
    @cocktails = Cocktail.all
    @cocktail = Cocktail.new
  end
  def show
  end
  def new
    @cocktail = Cocktail.new
  end
  def create
    cocktail = Cocktail.new(cocktail_params)
    if cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end
  end
  def edit
  end
  def update
    if @cocktail.update(cocktail_params)
      redirect_to cocktails_path
    else
      render :edit
    end
  end
  # def destroy
  #   @cocktail.destroy
  #   redirect_to cocktails_path
  # end

  private
  def cocktail_params
    params.require(:cocktail).permit(:name, :photo, :photo_cache)
  end
  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end

##########FROM LE WAGON LECTURE NOTES ################
# app/controllers/products_controller.rb
# def product_params
#   params.require(:product).permit(:name, :description, :photo, :photo_cache)
# end

