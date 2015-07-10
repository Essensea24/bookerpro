class CreateRoomAvails < ActiveRecord::Migration
  def change
    create_table :room_avails do |t|

      t.timestamps null: false
    end
  end
end
