class Match < ActiveRecord::Base
	validates :winner_id, :loser_id, presence: true

	belongs_to :winner,
	class_name: "Player",
	primary_key: :player_id,
	foreign_key: :winner

	belongs_to :loser,
	class_name: "Player",
	primary_key: :player_id, 
	foreign_key: :loser 

end
