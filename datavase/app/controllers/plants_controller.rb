class PlantsController < ApplicationController

  def index
    @plants = Plant.all.order(:name)
  end

  def show
    @plant = Plant.find params[:id]
  end

end
