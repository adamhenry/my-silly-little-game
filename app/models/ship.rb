class Ship < ActiveRecord::Base
	validates_presence_of :name
	validates_numericality_of :cargo, :max_cargo

	def full?
		cargo >= max_cargo ? true : false
	end

	def cargo_room
		max_cargo - cargo
	end

	protected
	def validate
		raise( "Cargo hold full for -#{name}") if cargo > max_cargo
	end
end
