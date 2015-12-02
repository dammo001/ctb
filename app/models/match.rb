class Match < ActiveRecord::Base
	validates :winner, :loser, presence: true

	belongs_to :champ,
	class_name: "Player",
	primary_key: :player_id,
	foreign_key: :winner

	belongs_to :failure,
	class_name: "Player",
	primary_key: :player_id, 
	foreign_key: :loser 

end
