class ChangeRuleColumnOnCondition < ActiveRecord::Migration
  def change
    rename_column :conditions, :rule, :value
    change_column :conditions, :value, :integer
  end
end
