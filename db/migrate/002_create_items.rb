class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
	t.column :name, :string
	t.column :volume, :intiger
    end
  end

  def self.down
    drop_table :items
  end
end
