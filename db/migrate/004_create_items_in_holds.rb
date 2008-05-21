class CreateItemsInHolds < ActiveRecord::Migration
  def self.up
    create_table :items_in_holds do |t|
	t.column :hold_id, :intiger, :nil => false
	t.column :item_id, :intiger, :nil => false
	t.column :quantity, :intiger, :nil => false
	t.column :total_volume, :intiger, :nil => false
    end
  end

  def self.down
    drop_table :items_in_holds
  end
end
