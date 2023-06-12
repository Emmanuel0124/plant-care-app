class SchedulesController < ApplicationController
  def index
    @schedules = current_user.schedules
    render :index
  end
  def show
    @schedule = Schedule.find_by(id: params[:id])
    render :show
  end

  def create
    @schedule = Schedule.create(
      plant_id: params[:plant_id],
      user_id: params[:user_id],
      watering_start_date: params[:watering_start_date],
    )
    render :show
  end

  def update
    @schedule = Schedule.find_by(id: params[:id])
    @schedule.update(
      plant_id: params[:plant_id],
      user_id: params[:user_id],
      watering_start_date: params[:watering_start_date],
    )
    render :show
  end

  def destroy
    @schedule = Schedule.find_by(id: params[:id])
    @schedule.destroy
    render json: { message: "Schedule deleted" }
  end

end
