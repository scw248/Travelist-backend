class AddImageToDestinations < ActiveRecord::Migration[5.2]
  def change
    add_column :destinations, :image, :blob
  end
end
