class CreateReturnAuthorizations < ActiveRecord::Migration
  def change
    create_table :return_authorizations do |t|
      t.string     :number
      t.string     :state
      t.decimal    :amount, :precision => 8, :scale => 2, :default => 0.0, :null => false
      t.references :order
      t.text       :reason      
      t.timestamps null: false
    end
  end
end
