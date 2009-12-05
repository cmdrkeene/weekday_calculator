require 'spec_helper'

describe WeekdayCalculator do
  describe "weekdays" do
    it "returns 1 weekday from now (Thursday)" do
      WeekdayCalculator.nth_weekday(1, Date.parse("Jan 1, 2009")).should == Date.parse("Jan 2, 2009")
    end

    it "returns 1 weekday from now (Friday)" do
      WeekdayCalculator.nth_weekday(1, Date.parse("Jan 2, 2009")).should == Date.parse("Jan 5, 2009")
    end

    it "returns 1 weekday from now (Saturday)" do
      WeekdayCalculator.nth_weekday(1, Date.parse("Jan 3, 2009")).should == Date.parse("Jan 5, 2009")
    end

    it "returns 1 weekday from now (Sunday)" do
      WeekdayCalculator.nth_weekday(1, Date.parse("Jan 4, 2009")).should == Date.parse("Jan 5, 2009")
    end
    
    it "returns 2 weekdays from now (Thursday)" do
      WeekdayCalculator.nth_weekday(2, Date.parse("Jan 1, 2009")).should == Date.parse("Jan 5, 2009")
    end

    it "returns 2 weekdays from now (Friday)" do
      WeekdayCalculator.nth_weekday(2, Date.parse("Jan 2, 2009")).should == Date.parse("Jan 6, 2009")
    end

    it "returns 2 weekdays from now (Saturday)" do
      WeekdayCalculator.nth_weekday(2, Date.parse("Jan 3, 2009")).should == Date.parse("Jan 6, 2009")
    end

    it "returns 2 weekdays from now (Sunday)" do
      WeekdayCalculator.nth_weekday(2, Date.parse("Jan 4, 2009")).should == Date.parse("Jan 6, 2009")
    end

    it "returns 2 weekdays from now (Monday)" do
      WeekdayCalculator.nth_weekday(2, Date.parse("Jan 5, 2009")).should == Date.parse("Jan 7, 2009")
    end

    it "returns 2 weekdays from now (Tuesday)" do
      WeekdayCalculator.nth_weekday(2, Date.parse("Jan 6, 2009")).should == Date.parse("Jan 8, 2009")
    end

    it "returns 3 weekdays from now (Thursday)" do
      WeekdayCalculator.nth_weekday(3, Date.parse("Jan 1, 2009")).should == Date.parse("Jan 6, 2009")
    end

    it "returns 3 weekdays from now (Friday)" do
      WeekdayCalculator.nth_weekday(3, Date.parse("Jan 2, 2009")).should == Date.parse("Jan 7, 2009")
    end

    it "returns 3 weekdays from now (Saturday)" do
      WeekdayCalculator.nth_weekday(3, Date.parse("Jan 3, 2009")).should == Date.parse("Jan 7, 2009")
    end

    it "returns 4 weekdays from now" do
      WeekdayCalculator.nth_weekday(4, Date.parse("Jan 1, 2009")).should == Date.parse("Jan 7, 2009")
    end
    
    it "returns 7 weekdays from now" do
      WeekdayCalculator.nth_weekday(7, Date.parse("Jan 14, 2009")).should == Date.parse("Jan 23, 2009")
    end    

    it "returns 10 weekdays from now" do
      WeekdayCalculator.nth_weekday(10, Date.parse("Jan 1, 2009")).should == Date.parse("Jan 15, 2009")
    end    

    it "returns 20 weekdays from now" do
      WeekdayCalculator.nth_weekday(20, Date.parse("Jan 1, 2009")).should == Date.parse("Jan 29, 2009")
    end    
    
    it "accepts time" do
      WeekdayCalculator.nth_weekday(10, Time.parse("Jan 1, 2009")).should == Date.parse("Jan 15, 2009")
    end
  end
  
  describe "every_nth_weekday" do
    it "returns all weekdays in range" do
      weekdays = WeekdayCalculator.every_nth_weekday(5, Date.parse("Jan 1, 2009"), Date.parse("Jan 20, 2009"))
      weekdays.should == [
        Date.parse("Jan 8, 2009"),
        Date.parse("Jan 15, 2009")
      ]
    end
    
    it "returns nothing when start is later than end" do
      WeekdayCalculator.every_nth_weekday(1, Date.parse("Jan 1, 2010"), Date.parse("Jan 1, 2000")).should == []
    end

    it "accepts time for start and end" do
      WeekdayCalculator.every_nth_weekday(1, Time.parse("Jan 1, 2009"), Time.parse("Jan 2, 2009")).should == [Date.parse("Fri, 02 Jan 2009")]
    end
  end
end
