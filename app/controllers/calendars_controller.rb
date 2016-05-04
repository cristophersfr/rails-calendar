class CalendarsController < ApplicationController

  # GET '/calendars/show'
  def show
    @current_date = Date.today
    unless params[:month] and params[:year]
      @calendar = Calendar.new(month: Date.today.month, year: Date.today.year)
    else
      @calendar = Calendar.new(month: params[:month], year: params[:year])
    end
  end

  # GET 'calendars/list_events'
  def list_events
    @current_date = Date.parse(date_params)
    @events = Event.find_by_date(@current_date)
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def date_params
    params.require(:date)
  end
end
