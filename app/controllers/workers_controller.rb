class WorkersController < ApplicationController

  before_action :find_worker, only: [:edit, :update]

  def index
    @workers = Worker.all.sort_by { |worker| worker.status }
  end

  def new
    @worker = Worker.new
  end

  def create
    @worker = Worker.new(params_worker)
    if @worker.save!
      redirect_to root_path
    else
      redirect_to root_path
      # TO DO: display an error message
    end
  end

  def edit
    @setting = SettingService.new
    @status_collection = @setting.status_list
    @prices = @setting.prices_list
  end

  def update
    @worker.update(params_worker)
    redirect_to workers_path
    # TO DO: display success message 'Medecin mis à jour'
  end

  private

  def params_worker
    params.require(:worker).permit(:first_name, :status, :price)
  end

  def find_worker
    @worker = Worker.find(params[:id])
  end
end


# def home
#   @shifts = Shift.all
#   @worker = Worker.new
#   @shift = Shift.new
#   @workers = Worker.all

#   @start_dates = Shift.all.map do |shift|
#     shift.start_date
