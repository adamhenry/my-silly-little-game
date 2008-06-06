class AddHoldToShips < ActiveRecord::Migration
  def self.up
	add_column :ships, :hold_id, :integer
  end

  def self.down
	remove_column :ships, :hold_id
  end
end
