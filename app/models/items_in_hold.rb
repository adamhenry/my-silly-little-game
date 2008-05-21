class ItemsInHold < ActiveRecord::Base
	belongs_to :hold
	belongs_to :item
end
