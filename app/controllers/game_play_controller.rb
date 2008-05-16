class GamePlayController < ApplicationController
	def index
		@ship = Ship.find 1
	end
	
	def mine_astroid
		@ship = Ship.find 1
		@ship.cargo += (ore = rand(15) + 1)
		@ship.save
		flash[:notice] = "You have mined #{ore} tons of ore form the Astroid"
		redirect_to (:action => :index)
	end
end
