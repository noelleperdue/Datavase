class PlantsController < ApplicationController

  def index
    @plants = Plant.all.order(:name)
  end


end
