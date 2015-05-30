class HolidayController < ApplicationController
  def show
    @holidays = by_param_type
  end

  private

  def by_param_type
    if params.key? :slug
      Holiday.where(slug: params[:slug])
    elsif params.key? :id
      Holiday.where(id: params[:id])
    end
  end
end
