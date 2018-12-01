class WorkersController < ApplicationController

  before_action :set_worker, only: [:edit, :update]

  STATUS = ['Interne', 'Titulaire', 'Interimaire']
  PRICES = [125, 170, 240]

  def index
    @workers = Worker.all
  end

  def new
    @worker = Worker.new
  end

  def create
    @worker = Worker.new(params_worker)
    if @worker.save!
      redirect_to root_path
    else

    end
  end

  def edit
    @status_collection = STATUS
    @prices = PRICES
  end

  def update
    @worker.update(params_worker)
    redirect_to workers_path
  end

  private

  def params_worker
    params.require(:worker).permit(:first_name, :status, :price)
  end

  def set_worker
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
