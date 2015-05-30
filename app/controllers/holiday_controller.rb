class HolidayController < ApplicationController
  def show
    @holiday = Holiday.find(params.require(:id))
  end
end
