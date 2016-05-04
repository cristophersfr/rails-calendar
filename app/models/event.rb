class Event < ActiveRecord::Base
  has_and_belongs_to_many :participants, class_name: 'User'

  # Finds the events occuring in the date.
  # Returns an array with the events.
  def self.find_by_date(date)
    events = []
    Event.all.each do |e|
      if e.start_time.to_date == date
        events.push(e)
      end
    end
    return events
  end
end
