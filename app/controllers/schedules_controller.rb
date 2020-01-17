class SchedulesController < ApplicationController
  def top
    @facility = Facility.find(1)
    @room = @facility.rooms.find(params[:id])
    if @room
      @schedules = @room.schedules.where(room_id: params[:id])
      render 'top'
    end
  end

  def new
    @room = Room.find(params[:id])
    @schedule = Schedule.new
    @user = current_user
  end

  def create
    @room = Room.find(params[:id])
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      redirect_to("/schedules/top/#{@room.id}")
    else
      render action: :new
    end
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule= Schedule.find(params[:id])
    if @schedule.update(schedule_params)
      redirect_to("/schedules/top/#{@schedule.room_id}")
    else
      render action: :edit
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    redirect_to("/schedules/top/#{@schedule.room_id}")
  end

  def schedule_params
    params.require(:schedule).permit(:user_id, :room_id, :starting_time, :finish_time, :title, :detail, :url)
  end

end
