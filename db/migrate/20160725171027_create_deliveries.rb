class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.monetize :charge, null: false
      t.boolean  :completed, null: false, default: false

      t.decimal  :pickup_lat, null: true
      t.decimal  :pickup_lng, null: true
      t.decimal  :dropoff_lat, null: true
      t.decimal  :dropoff_lng, null: true

      t.timestamps null: false
    end
  end
end
