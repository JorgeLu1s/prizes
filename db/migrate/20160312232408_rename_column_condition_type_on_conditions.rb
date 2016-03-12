class RenameColumnConditionTypeOnConditions < ActiveRecord::Migration
  def change
    rename_column :conditions, :condition_type, :condition_type_id
  end
end
