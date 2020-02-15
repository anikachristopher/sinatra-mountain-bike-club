class Rider < ActiveRecord::Base
has_many :events
has_one :category

end