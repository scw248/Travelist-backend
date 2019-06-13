class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.string :name
      t.boolean :image
      t.integer :votes
      t.string :price
      t.string :description

      t.timestamps
    end
  end
end
