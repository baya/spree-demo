class CreateInventoryUnits < ActiveRecord::Migration
  def change
    create_table :inventory_units do |t|
      t.integer    :lock_version,        :default => 0
      t.string     :state
      t.references :variant
      t.references :order
      t.references :shipment
      t.references :return_authorization
      t.timestamps null: false
    end
  end
end
