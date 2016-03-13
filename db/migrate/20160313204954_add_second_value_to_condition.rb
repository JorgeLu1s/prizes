class AddSecondValueToCondition < ActiveRecord::Migration
  def change
    add_column :conditions, :second_value, :integer
  end
end
