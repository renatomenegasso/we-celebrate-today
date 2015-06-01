class DateController < ApplicationController
  def show
    @date = date
    @holidays = Holiday.from_date(date)
  end

  private

  def date
    @date ||=  if params.key? :today
      Time.zone.today
    elsif params.key? :tomorrow
      Time.zone.tomorrow
    elsif params.key? :yesterday
      Time.zone.yesterday
    else
      Date.parse("#{params[:day]} #{params[:month]}", format: :short)
    end
  end
end
