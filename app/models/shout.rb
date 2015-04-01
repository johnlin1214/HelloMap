class Shout < ActiveRecord::Base
 validates :message, presence: true
 validates :message, length: { in: 2..130 }
 validates :lat, presence: true
 validates :lng, presence: true
end
