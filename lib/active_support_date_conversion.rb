class Date
  def to_date
    self
  end
end unless Date.today.respond_to?(:to_date)

class Time
  def to_date
    ::Date.new(year, month, day)
  end
end unless Time.now.respond_to?(:to_date)