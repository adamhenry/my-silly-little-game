class GamePlayController < ApplicationController
	def index
		@ship = get_ship
	end

	def empty_cargo
		@ship = get_ship
		@ship.empty_cargo
		@ship.save
		redirect_to_index "You dump your cargo hold into the deapth of space"
	end

	def mine_astroid
		@ship = get_ship
		@ship.cargo += (ore = rand(15) + 1)
		@ship.save
		redirect_to_index "You have mined #{ore} tons of ore form the Astroid"
	end

	def redirect_to_index msg
		flash[:notice] = msg unless msg.nil?
		redirect_to (:action => :index)
	end

	def get_ship
		Ship.find 1
	end
	
end
