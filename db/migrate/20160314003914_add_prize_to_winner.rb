class AddPrizeToWinner < ActiveRecord::Migration
  def change
    add_column :winners, :prize, :string
  end
end
