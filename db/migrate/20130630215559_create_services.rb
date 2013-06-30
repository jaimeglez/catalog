class CreateServices < ActiveRecord::Migration
  def up
    create_table :services do |t|
      t.integer  :customer_id
      t.string   :description
      t.string   :piano
      t.date     :service_date
      t.boolean  :done
      t.timestamps
    end
  end

  def down
    drop_table :services
  end
end
