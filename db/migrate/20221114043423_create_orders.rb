class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      
      t.integer :customer_id,null:false
      t.string :ship_to_address,null:false
      t.string :ship_postal_code,null:false
      t.string :ship_name,null:false
      t.integer :freight,null:false
      t.integer :payment_method,null:false
      t.integer :total_payment,null:false
      t.integer :status,nyull:false
      

      t.timestamps
    end
  end
end
