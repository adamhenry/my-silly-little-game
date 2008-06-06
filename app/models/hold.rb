class Hold < ActiveRecord::Base
	has_many :items_in_hold
	has_many :items, :through => :items_in_hold
	has_one :ship

	def cargo
		if @in_cargo.nil?
			@in_cargo = Hold.find_by_sql("select * from " +
							"items_in_holds, items " +
							"WHERE hold_id = #{self.id} " +
							"AND item_id = items.id" )
		else
			@in_cargo
		end
	end
	
	def save_cargo
		if @in_cargo.nil?
			return
		else
			@in_cargo.each do |c|
				ItemsInCargo.new(c).save
				c.id = c.item_id
				Item.new(c).save
			end
		end
	end
				
end
