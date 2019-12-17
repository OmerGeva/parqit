class CreateGarages < ActiveRecord::Migration[5.2]
  def change
    create_table :garages do |t|
      t.integer :latitude
      t.integer :longitude
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
