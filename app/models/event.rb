class Event < ActiveRecord::Base
belongs_to :rider
has_one :user, through: :rider

validates :rider_category, :event_date, :location, presence: true
end
