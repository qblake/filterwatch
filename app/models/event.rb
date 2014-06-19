#
class Event < ActiveRecord::Base
  belongs_to :project
  belongs_to :kind
end
