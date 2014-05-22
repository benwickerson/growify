class VarietiesController < ApplicationController

  def show
    @variety = Variety.find(params[:id])
  end

  def new
    @variety = Variety.new
  end

  def create
    @variety = Variety.new(variety_params)
    if @variety.save
      flash[:success] = "#{@variety.name} saved."
      redirect_to @variety
    else
      render 'new'
    end
  end

  private

    def variety_params
      params.require(:variety).permit(:name, :vegetable_id, :description)
    end


end
