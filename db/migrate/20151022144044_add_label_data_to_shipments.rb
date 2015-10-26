class AddLabelDataToShipments < ActiveRecord::Migration
  def change
    change_table :spree_shipments do |t|
      t.binary :label_data
    end
  end
end
