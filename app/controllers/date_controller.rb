class DateController < ApplicationController
  def show
    @date = date
    @holidays = Holiday.from_date(date)
  end

  private

  def date
    @date ||=  if params.key? :today
      Date.today
    elsif params.key? :tomorrow
      Date.tomorrow
    elsif params.key? :yesterday
      Date.yesterday
    else
      Date.parse("#{params[:day]} #{params[:month]}", format: :short)
    end
  end
end
