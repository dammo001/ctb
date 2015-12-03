class FixMatchColumnName < ActiveRecord::Migration
  def change
  	rename_column :matches, :winner, :winner_id
  	rename_column :matches, :loser, :loser_id
  end
end
