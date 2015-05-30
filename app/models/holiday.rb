class Holiday < ActiveRecord::Base
  scope :from_today, -> { where(day: Date.today.day, month: Date.today.month) }
  scope :from_date,  -> (dt) { where(day: dt.day, month: dt.month) }

  def to_s
    "#{self.day}/#{self.month} #{self.description}"
  end
end
