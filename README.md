# Weekday Calculator

It provides constant time nth-weekday calculation from a given date.

It also produces an array of every nth weekday in a date range.

## Installation

Make sure gemcutter.org is one of your gem sources, then run:
    
    gem install weekday_calculator

## Usage

Values returned are Date instances.

### nth weekday from a date

3 weekdays from now:

    date = Date.parse("Jan 1, 2009")
    WeekdayCalculator.nth_weekday(3, date) #=> Jan 6, 2009
    
### Every nth weekday

Every 5th weekday between two dates:
    
    start  = Date.parse("Jan 1, 2009")
    finish = Date.parse("Jan 20, 2009")
    WeekdayCalculator.every_nth_weekday(5, start, finish) #=> [Jan 8, 2009, Jan 15, 2009]    
 
## Author

Brandon Keene

## Contributors

Pat Nakajima