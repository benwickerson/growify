class VegetablesController < ApplicationController

  def index
    @vegetables = Vegetable.all
    @families = Family.all
  end

  def show
    @veg = Vegetable.find(params[:id])
    @info = @veg.info
  end

  def new
  end

end
