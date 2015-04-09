class AddPhotoColumnsToBoats < ActiveRecord::Migration
    def self.up
      add_attachment :boats, :photo
    end

    def self.down
      remove_attachment :boats, :photo
    end
end
