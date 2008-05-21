class Item < ActiveRecord::Base
	has_many :items_in_hold
end
