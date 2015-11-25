class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
    	t.integer :winner, null: false 
    	t.integer :loser,  null: false 
      t.timestamps null: false
    end
    add_index :matches, [:winner, :loser] 
  end
end
