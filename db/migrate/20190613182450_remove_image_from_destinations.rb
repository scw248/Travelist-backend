class RemoveImageFromDestinations < ActiveRecord::Migration[5.2]
  def change
    remove_column :destinations, :image, :boolean
  end
end
