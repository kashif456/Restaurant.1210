class Restaurant < ActiveRecord::Base
	has_many :reservation
end
