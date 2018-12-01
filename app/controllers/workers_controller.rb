class WorkersController < ApplicationController
  def new
    @worker = Worker.new
  end

  def create
    @worker = Worker.create(worker_params)
    if @worker.save!
      redirect_to root_path, notice: "Médecin Ajouté!!"
    else
      render :new
    end
  end

  def edit
    @worker = Worker.find(params[:id])
  end

  def update
    @worker.update(worker_params)
  end

  private

  def worker_params
    params.require(:worker).permit(:first_name, :status, :price)
  end
end
