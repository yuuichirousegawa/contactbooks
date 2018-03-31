class CreateCustomerSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_settings do |t|
      t.integer :level
      t.text :comment

      t.timestamps
    end
  end
end
