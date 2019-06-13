class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.string :name
      t.boolean :image
      t.integer :votes
      t.string :price
      t.string :description

      t.timestamps
    end
  end
end
