class AddConditionTypeToConditions < ActiveRecord::Migration
  def change
    add_column :conditions, :condition_type, :integer
  end
end
