class Holiday < ActiveRecord::Base
  scope :from_today, -> { where(day: Date.today.day, month: Date.today.month) }

  def to_s
    "#{self.day}/#{self.month} #{self.description}"
  end
end
