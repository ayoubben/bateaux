class CreateBoats < ActiveRecord::Migration
  def change
    create_table :boats do |t|
      t.string :title
      t.text :description
      t.string :adress

      t.timestamps
    end
  end
end
