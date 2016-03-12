class CreateWinners < ActiveRecord::Migration
  def change
    create_table :winners do |t|
      t.string :user_id

      t.timestamps null: false
    end
  end
end
