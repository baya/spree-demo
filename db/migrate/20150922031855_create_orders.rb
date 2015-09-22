class CreateOrders < ActiveRecord::Migration
  def change
    create_table :spree_orders do |t|
      t.string     :number,               :limit => 15
      t.decimal    :item_total,           :precision => 8, :scale => 2, :default => 0.0, :null => false
      t.decimal    :total,                :precision => 8, :scale => 2, :default => 0.0, :null => false
      t.string     :state
      t.decimal    :adjustment_total,     :precision => 8, :scale => 2, :default => 0.0, :null => false
      t.references :user
      t.datetime   :completed_at
      t.references :bill_address
      t.references :ship_address
      t.decimal    :payment_total,        :precision => 8, :scale => 2, :default => 0.0
      t.references :shipping_method
      t.string     :shipment_state
      t.string     :payment_state
      t.string     :email
      t.text       :special_instructions
      t.timestamps null: false
    end
  end
end
