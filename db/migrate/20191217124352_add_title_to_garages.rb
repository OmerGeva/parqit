class AddTitleToGarages < ActiveRecord::Migration[5.2]
  def change
    add_column :garages, :title, :string
  end
end
