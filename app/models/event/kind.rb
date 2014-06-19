#
class Event::Kind < ActiveRecord::Base
  has_many :events
end
