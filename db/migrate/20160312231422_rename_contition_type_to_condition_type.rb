class RenameContitionTypeToConditionType < ActiveRecord::Migration
  def change
    rename_table :contition_types, :condition_types
  end
end
