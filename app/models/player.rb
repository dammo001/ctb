class Player < ActiveRecord::Base
	validates :name, :player_id, presence: true, uniqueness: true 

	has_many :won_matches,
	class_name: "Match",
	primary_key: :player_id,
	foreign_key: :winner

	has_many :lost_matches,
	class_name: "Match",
	primary_key: :player_id,
	foreign_key: :loser

	def match_count
		self.won_matches.count + self.lost_matches.count 
	end


end
