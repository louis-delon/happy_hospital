class ShiftsController < ApplicationController

  def create
    @shift = Shift.new(params_shift)
    @shift.worker_id = params['shift']['worker_id'].to_i
    if @shift.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @shift = Shift.find(params[:id])
  end

  def update
    @shift = Shift.find(params[:id])
  end

private

  def params_shift
    params.require(:shift).permit(:start_date, :worker_id)
  end

end
