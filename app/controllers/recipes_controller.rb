class RecipesController < ApplicationController
  before_action :get_recipe, only: [:show, :edit, :update, :destroy]
  before_action :get_ingredients, only: [:new, :edit]
  def index

  end

  def show

  end

  def new
    @recipe = Recipe.new
  end

  def create
    recipe = Recipe.create(recipe_params)
    redirect_to recipe_path(recipe)
  end

  def edit

  end

  def update
    recipe = Recipe.update(recipe_params)
    redirect_to recipe_path(recipe)
  end



  private

  def recipe_params
    params.require(:recipe).permit(:name, ingredient_ids: [])
  end

  def get_recipe
    @recipe = Recipe.find_by(id: params[:id])
  end

  def get_ingredients
    @ingredients = Ingredient.all
  end
end
