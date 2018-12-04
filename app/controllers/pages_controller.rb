class PagesController < ApplicationController
  before_action :start_dates, :shifts_list, :workers_list, :set_data, only: :home

  def home
    @worker = Worker.new
    @shift = Shift.new
  end

  def start_dates
    @start_dates = Shift.all.map(&:start_date)
  end

  def shifts_list
    @shifts = Shift.all.sort_by(&:start_date)
  end

  def workers_list
    @workers = Worker.all.sort_by(&:created_at)
  end

  def set_data
    @setting = SettingService.new
    @status_collection = @setting.status_list
    @prices = @setting.prices_list
  end
end
