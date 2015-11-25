class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
    	t.string :name, null: false
    	t.integer :rating, :default => 1000  
    	t.integer :player_id

      t.timestamps null: false
    end 
    add_index :players, :name, unique: true 
  end
end
