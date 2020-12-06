class CreateCommunalServiceRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :communal_service_records do |t|
      t.string :owner_name
      t.string :owner_last_name
      t.string :service_type
      t.string :city
      t.string :street
      t.string :house
      t.integer :apartment

      t.timestamps
    end
  end
end
