class UsersController < ApplicationController
  def calendar
    @user = current_user
    @schedules = Schedule.where(user_id: @user.id)
    render 'calendar'
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to("/users/show")
  end

  def user_params
    params.require(:user).permit(:last_name, :first_name, :email, :password)
  end

end
