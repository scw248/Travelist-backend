class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.integer :user_id
      t.integer :destination_id

      t.timestamps
    end
  end
end
