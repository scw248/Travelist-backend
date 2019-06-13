class AddForeignKeysToModels < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :destinations, :users
    add_foreign_key :destinations, :categories
    add_foreign_key :categories, :destinations
  end
end
