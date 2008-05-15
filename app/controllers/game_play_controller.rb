class GamePlayController < ApplicationController
	@ship = Ship.new :name => "Infinity", :max_cargo => 300, :cargo => 0
end
