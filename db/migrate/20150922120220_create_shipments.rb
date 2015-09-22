class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.string     :tracking
      t.string     :number
      t.decimal    :cost,           :precision => 8, :scale => 2
      t.datetime   :shipped_at
      t.references :order
      t.references :shipping_method
      t.references :address
      t.string     :state
      t.timestamps null: false
    end
  end
end
