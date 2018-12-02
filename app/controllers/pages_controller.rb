class PagesController < ApplicationController

  before_action :start_dates, :shifts_list, :workers_list, :settings, only: :home

  def home
    @worker = Worker.new
    @shift = Shift.new
  end

  def start_dates
    @start_dates = Shift.all.map do |shift|
      shift.start_date
    end
  end

  def shifts_list
    @shifts = Shift.all.sort_by { |shift| shift.start_date }
  end

  def workers_list
    @workers = Worker.all.sort_by { |worker| worker.created_at }
  end

  def settings
    @setting = SettingService.new
    @status_collection = @setting.status_list
    @prices = @setting.prices_list
  end

end
