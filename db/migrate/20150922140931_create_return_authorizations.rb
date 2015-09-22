class CreateReturnAuthorizations < ActiveRecord::Migration
  def change
    create_table :return_authorizations do |t|

      t.timestamps null: false
    end
  end
end
