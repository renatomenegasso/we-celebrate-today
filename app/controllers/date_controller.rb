class DateController < ApplicationController
  def show
    @date = date
    @holidays = Holiday.from_date(date)
  end

  private

  def date
    @date ||=  if params.key? :today
      Date.today
    else
      Date.parse("#{params[:day]} #{params[:month]}", format: :short)
    end
  end
end
