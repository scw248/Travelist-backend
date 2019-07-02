class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.integer :user_id
      t.integer :destination_id
      t.string :name
      t.integer :votes
      t.string :price
      t.string :description
      t.string :city
      t.string :state
      t.string :country
      t.binary :image

      t.timestamps
    end
  end
end
