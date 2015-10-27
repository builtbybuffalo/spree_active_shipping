class AddCountryOfManufactureToProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :country_of_manufacture, :string
  end
end
