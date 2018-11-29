class PagesController < ApplicationController

  def home
    @shifts = Shift.all
  end

end
