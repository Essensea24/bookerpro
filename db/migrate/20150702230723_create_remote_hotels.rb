class CreateRemoteHotels < ActiveRecord::Migration
  def change
    create_table :remote_hotels do |t|

      t.timestamps null: false
    end
  end
end
