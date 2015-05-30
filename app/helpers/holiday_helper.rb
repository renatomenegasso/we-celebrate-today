module HolidayHelper
  def build_date(holiday)
    Date.new(Date.today.year, holiday.month, holiday.day)
  end
end
