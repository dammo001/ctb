class AddSeenToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :seen, :boolean, :default => :false
  end
end
