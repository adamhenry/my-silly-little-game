class Ship < ActiveRecord::Base

	def add_cargo c
		if @cargo + c < @max_cargo 
			@cargo = @max_cargo
		else
			return false
		end
	end

	def cargo_space
		@max_cargo - @cargo
	end
	
	def cargo_space?
		( @spcae = cargo_space ) != 0 ? @space : false
	end
	
	def full
		@cargo == @max_cargo ? true : false
	end
end
