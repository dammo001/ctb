class PlayersController < ApplicationController

	def create 
		json_players = JSON.parse(player_params)
		json_players.each do |hash, crap|
			hash.each do |k, v|
				v.each do |field, value| 
					if field == "id"
						ids << value  
					elsif field == "username"
						names << value 
					elsif field == "display_name"
						display_name << value 
					end
				end
			end
		end
		players = [] 
		i = 0 
		while i < ids.length 
			players << [display_name[i], ids[i]]
			i+=1
		end
		players.each do |player|
			Player.create!(display_name: player[0], player_id: player[1]) unless Player.find_by_player_id(player[1])
		end
	end





end
