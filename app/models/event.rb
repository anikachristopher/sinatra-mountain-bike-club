class Event < ActiveRecord::Base
belongs_to :user

validates :name, :event_date, :category, :time, :location, presence: true


    
      
end
