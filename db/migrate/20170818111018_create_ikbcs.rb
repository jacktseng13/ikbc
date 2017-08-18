class CreateIkbcs < ActiveRecord::Migration[5.0]
  def change
    create_table :ikbcs do |t|
      t.string :keybord
      t.text :mouse

      t.timestamps
    end
  end
end
