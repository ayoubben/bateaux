class AddLongitudeAndLatitudeToBoats < ActiveRecord::Migration
  def change
    add_column :boats, :longitude, :float
    add_column :boats, :latitude, :float
  end
end
