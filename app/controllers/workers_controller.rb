class WorkersController < ApplicationController

  before_action :find_worker, only: [:edit, :update]
  before_action :set_data, only: [:index, :edit]

  def index
    @workers = Worker.all.sort_by(&:status)
  end

  def new
    @worker = Worker.new
  end

  def create
    @worker = Worker.new(params_worker)
    if @worker.save!
      redirect_to root_path
    end
      # TO DO: Manage displaying an error message if an error occur
  end

  def edit

  end

  def update
    @worker.update(params_worker)
    respond_to do |format|
            format.html { redirect_to workers_path }
            format.js
    end
    flash[:success] = "Le livre a été mis à jour."
    # TO DO: display success message 'Medecin mis à jour'
  end

  private

  def params_worker
    params.require(:worker).permit(:first_name, :status, :price)
  end

  def find_worker
    @worker = Worker.find(params[:id])
  end

  def set_data
    @setting = SettingService.new
    @status_collection = @setting.status_list
    @prices = @setting.prices_list
  end
end
