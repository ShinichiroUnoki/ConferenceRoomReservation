class RoomsController < ApplicationController
  def index
    @facility = Facility.find(1)
    @rooms = @facility.rooms.all
  end

  def new
    @facility = Facility.find(1)
    @room = @facility.rooms.new
  end

  def create
    @facility = Facility.find(1)
    @room = @facility.rooms.new(room_params)
    if @room.save
      redirect_to("/")
    else
      render action: :new
    end
  end

  def edit
    @facility = Facility.find(1)
    @room = @facility.rooms.find(params[:id])
  end

  def update
    @facility = Facility.find(1)
    @room = @facility.rooms.find(params[:id])
    if @room.update(room_params)
      redirect_to("/")
    else
      render action: :edit
    end
  end

  def destroy
    @facility = Facility.find(1)
    @room = @facility.rooms.find(params[:id])
    @room.destroy
    redirect_to("/")
  end

  def room_params
    params.require(:room).permit(:name, :seating_capacity, :usage_fee, :accountable_time, :note)
  end

end
