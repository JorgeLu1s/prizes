class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.string :name
      t.text :rule

      t.timestamps null: false
    end
  end
end
