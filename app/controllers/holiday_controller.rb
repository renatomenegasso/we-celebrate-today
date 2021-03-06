class HolidayController < ApplicationController
  def show
    @holiday = by_param_type
    head :not_found if @holiday.nil?
  end

  private

  def by_param_type
    if params.key? :slug
      Holiday.find_by(slug: params[:slug])
    elsif params.key? :id
      Holiday.find(params[:id])
    end
  end
end
