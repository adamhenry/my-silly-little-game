class Hold < ActiveRecord::Base
	has_many :items_in_hold
	has_many :items, :through => :items_in_hold
end
