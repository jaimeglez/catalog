class CreateCustomers < ActiveRecord::Migration
  def up
    create_table :customers do |t|
      t.string   :name
      t.string   :address
      t.string   :email
      t.integer  :phone
      t.date     :next_service
      t.timestamps
    end
  end

  def down
    drop_table :customers
  end
end
