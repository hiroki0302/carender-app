class HomeController < ApplicationController
  def top
    @schedules = Schedule.all
    @schedule = Schedule.new
  end

  def new
  end

  
  # private
  # def Schedule_params
  #   params.require(:Schedule).permit(:plan, :memo, :start_time, :end_time)
  # end


end
