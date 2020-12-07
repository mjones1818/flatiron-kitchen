class IngredientsController < ApplicationController
  before_action :get_ingredient, only: [:show, :edit, :update, :destroy]

  def index

  end

  def show

  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    ingredient = Ingredient.new(ingredient_params)
    if ingredient.save
      redirect_to ingredient_path(ingredient)
    else
      render :edit
    end
  end

  def edit

  end

  def update
    ingredient = Ingredient.update(ingredient_params)
    redirect_to ingredient_path(ingredient)
  end



  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

  def get_ingredient
    @ingredient = Ingredient.find_by(id: params[:id])
  end
end
