class CreateHolds < ActiveRecord::Migration
  def self.up
    create_table :holds do |t|
	t.column :name, :string
    end
  end

  def self.down
    drop_table :holds
  end
end
