class SchedulesController < ApplicationController
  def top
    @facility = Facility.find(1)
    @room = @facility.rooms.find(params[:id])
  end

  def new
    @room = Room.find(params[:id])
    @schedule = @room.schedules.new
  end

  def create
    @room = Room.find(params[:id])
    @schedule = @room.schedules.create(schedule_params)
    redirect_to("/schedules/new/#{@room.id}")
  end

  def update
  end

  def destroy
  end

  def schedule_params
    params.require(:schedule).permit(:user_id, :room_id, :starting_time, :finish_time, :title, :detail)
  end

end
