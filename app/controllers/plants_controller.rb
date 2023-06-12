class PlantsController < ApplicationController
  def index
    @plants = current_user.plants
    render :index
  end
  def show
    @plant = Plant.find_by(id: params[:id])
    render :show
  end

  def create
    @plant = Plant.create(
      name: params[:name],
      description: params[:description],
      amount_of_sun: params[:amount_of_sun],
      days_to_water: params[:days_to_water],
      image_url: params[:image_url],
    )
    render :show
  end

  def update
    @plant = Plant.find_by(id: params[:id])
    @plant.update(
      name: params[:name],
      description: params[:description],
      amount_of_sun: params[:amount_of_sun],
      days_to_water: params[:days_to_water],
      image_url: params[:image_url],
    )
    render :show
  end
  def destroy
    @plant = Plant.find_by(id: params[:id])
    @plant.destroy
    render json: {message: "plant deleted "}
  end
  
end
