class DropLocationsTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :locations
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
