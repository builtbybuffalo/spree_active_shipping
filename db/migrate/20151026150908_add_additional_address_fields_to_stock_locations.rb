class AddAdditionalAddressFieldsToStockLocations < ActiveRecord::Migration
  def change
    change_table :spree_stock_locations do |t|
      t.string :company
    end
  end
end
