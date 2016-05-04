class Calendar < ActiveRecord::Base
  @@days_of_week = [ 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat' ]
  after_initialize :setup

  def setup
    @base_date = Date.new(year, month)
    @weeks = []
  end

  def self.days_of_week
    return @@days_of_week
  end

  def weeks
    # calculate starting point
    date = @base_date - @base_date.wday

    #calculate ending point
    stop = @base_date.next_month + (6 - @base_date.next_month.wday + 1)

    # here's a single week
    week = []

    while date != stop
      # add day to week
      week << date

      # if at the end of the week
      if date.wday == 6
        # add to weeks array
        @weeks << week
        # reset weekday counter
        week = []
      end

      date = date.next
    end

    return @weeks
  end
end
