class AddAddressToGarage < ActiveRecord::Migration[5.2]
  def change
    add_column :garages, :address, :string
  end
end
