class CreateOffices < ActiveRecord::Migration[6.0]
  def change
    create_table :offices do |t|
      t.string :street_address
      t.string :zip_code
      t.string :phone
      t.references :physician, null: false, foreign_key: true

      t.timestamps
    end
  end
end
