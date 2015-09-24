class CreateRegistros < ActiveRecord::Migration
  def change
    create_table :registros do |t|
      t.text :name
      t.text :homeaddress
      t.text :endaddress
      t.text :phone
      t.text :mail
      t.date :transfer_date
      t.time :hour_transfer
      t.text :observation

      t.timestamps null: false
    end
  end
end
