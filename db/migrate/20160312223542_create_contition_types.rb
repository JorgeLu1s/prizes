class CreateContitionTypes < ActiveRecord::Migration
  def change
    create_table :contition_types do |t|
      t.integer :type
      t.string :description

      t.timestamps null: false
    end
  end
end
