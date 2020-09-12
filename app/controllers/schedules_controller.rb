class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]

  # GET /schedules
  # GET /schedules.json
  def index
    @schedules = Schedule.all
    @schedule = Schedule.new
  end

  # GET /schedules/1
  # GET /schedules/1.json
  def show
  end

  # GET /schedules/new
  def new
    @schedule = Schedule.new
  end

  # GET /schedules/1/edit
  def edit
    @schedule = Schedule.find(params[:id])
  end

  # POST /schedules
  # POST /schedules.json
  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      redirect_to root_path
    else
      @schedules = Schedule.all
      render :index
    end

  

    # respond_to do |format|
    #   if @schedule.save
    #     format.html { redirect_to @schedule, notice: 'Schedule was successfully created.' }
    #     format.json { render :show, status: :created, location: @schedule }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @schedule.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /schedules/1
  # PATCH/PUT /schedules/1.json
  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(schedule_params)
      redirect_to root_path, notice:"編集できました"
    else
      render 'edit'
    end
  
    # respond_to do |format|
    #   if @schedule.update(schedule_params)
    #     format.html { redirect_to @schedule, notice: 'Schedule was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @schedule }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @schedule.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /schedules/1
  # DELETE /schedules/1.json
  def destroy

    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    redirect_to root_path, notice:"削除しました"
    # @schedule.destroy
    # respond_to do |format|
    #   format.html { redirect_to schedules_url, notice: 'Schedule was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
  def schedule_params
    params.require(:schedule).permit(:plan, :memo, :start_time, :end_time)
  end

end
