require 'time'
require 'active_support_date_conversion'

module WeekdayCalculator
  # The nth weekday from date
  def self.nth_weekday(nth, date)
    date = date.to_date
    multiplier = date.wday == 6 ? 1 : 2
    date + nth + (multiplier * (date.wday + nth - 1).div(5))
  end

  # Gives you every nth weekday from start to finish
  def self.every_nth_weekday(nth, start, finish)
    start, finish = start.to_date, finish.to_date
    weekdays = []
    while
      start = next_weekday = nth_weekday(nth, start)
      break if start > finish
      weekdays << next_weekday
    end
    weekdays
  end
end
