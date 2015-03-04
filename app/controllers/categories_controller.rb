class CategoriesController < ApplicationController

  def index
    @q = Category.ransack(params[:q])
    @categories = @q.result(distinct: true)
  end

  def show
    @category = Category.find(params[:id])
  end

end