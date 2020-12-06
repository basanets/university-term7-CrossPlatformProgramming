class CreateSights < ActiveRecord::Migration[6.0]
  def change
    create_table :sights do |t|
      t.string :name
      t.integer :city_id

      t.timestamps
    end
  end
end
