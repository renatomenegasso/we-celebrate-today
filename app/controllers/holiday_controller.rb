class HolidayController < ApplicationController
  def show
    @holiday = by_param_type
  end

  private

  def by_param_type
    if params.key? :today
      Holiday.from_today.first
    elsif params.key? :slug
      Holiday.find_by(slug: params[:slug])
    elsif params.key? :id
      Holiday.find_by(params[:id])
    end
  end
end
