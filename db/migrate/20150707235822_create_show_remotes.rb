class CreateShowRemotes < ActiveRecord::Migration
  def change
    create_table :show_remotes do |t|

      t.timestamps null: false
    end
  end
end
