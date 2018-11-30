class PagesController < ApplicationController

  def home
    @start_dates = Shift.all.map do |shift|
      shift.star_date
    end
    @shifts = Shift.all
    @worker = Worker.new
    @shift = Shift.new
    @workers = Worker.all.map do |worker|
      worker.first_name
    end
  end

end
