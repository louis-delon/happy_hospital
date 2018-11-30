class PagesController < ApplicationController

  def home
    @shifts = Shift.all
    @worker = Worker.new
    @shift = Shift.new
  end

end
