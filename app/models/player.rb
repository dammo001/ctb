class Player < ActiveRecord::Base
	validates :name, :player_id, presence: true 

	has_many :won_matches,
	class_name: "Match",
	primary_key: :player_id,
	foreign_key: :winner

	has_many :lost_matches,
	class_name: "Match",
	primary_key: :player_id,
	foreign_key: :loser
	
end
