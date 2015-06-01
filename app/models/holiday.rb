class Holiday < ActiveRecord::Base
  before_save :build_slug
  scope :from_date,  -> (dt) { where(day: dt.day, month: dt.month) }

  def to_s
    "#{self.day}/#{self.month} #{self.description}"
  end

  private

  def build_slug
    self.slug ||= self.description.parameterize
  end
end
