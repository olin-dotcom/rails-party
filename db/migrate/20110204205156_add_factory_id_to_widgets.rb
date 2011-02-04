class AddFactoryIdToWidgets < ActiveRecord::Migration
  def self.up
    add_column :widgets, :factory_id, :integer
  end

  def self.down
    remove_column :widgets, :factory_id
  end
end
