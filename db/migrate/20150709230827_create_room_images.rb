class CreateRoomImages < ActiveRecord::Migration
  def change
    create_table :room_images do |t|

      t.timestamps null: false
    end
  end
end
