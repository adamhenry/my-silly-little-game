class CreateShips < ActiveRecord::Migration
  def self.up
    create_table :ships do |t|
	t.column :name, :string
	t.column :max_cargo, :integer
	t.column :cargo, :integer
    end
  end

  def self.down
    drop_table :ships
  end
end
