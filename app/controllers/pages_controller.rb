class PagesController < ApplicationController

  STATUS = ['Interne', 'Titulaire', 'Interimaire']
  PRICES = [125, 170, 240]

  def home
    @shifts = Shift.all
    @worker = Worker.new
    @shift = Shift.new
    @workers = Worker.all
    @status_collection = STATUS
    @prices = PRICES
    @start_dates = Shift.all.map do |shift|
      shift.start_date
    end
  end

end
