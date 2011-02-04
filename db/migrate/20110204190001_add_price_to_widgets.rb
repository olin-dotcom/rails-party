class AddPriceToWidgets < ActiveRecord::Migration
  def self.up
    add_column :widgets, :price, :decimal
  end

  def self.down
    remove_column :widgets, :price
  end
end
