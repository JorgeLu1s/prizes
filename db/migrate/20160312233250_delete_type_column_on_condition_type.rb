class DeleteTypeColumnOnConditionType < ActiveRecord::Migration
  def change
    remove_column :condition_types, :type
  end
end
