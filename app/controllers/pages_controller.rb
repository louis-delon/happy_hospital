class PagesController < ApplicationController

  def home
    @start_dates = Shift.all.map do |shift|
      shift.start_date
    end
    @shifts = Shift.all
    @worker = Worker.new
    @shift = Shift.new
    @workers = Worker.all
  end

end
