class Holiday < ActiveRecord::Base
  def to_s
    "#{self.day}/#{self.month} #{self.description}"
  end
end
