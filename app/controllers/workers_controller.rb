class WorkersController < ApplicationController
  def new
    @worker = Worker.new
  end

  def create
    @worker = Worker.new(params_worker)
    if @worker.save!
      redirect_to root_path
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

  def params_worker
    params.require(:worker).permit(:first_name, :status, :price)
  end
end
