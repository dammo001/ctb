ApiUtil = { 

	getPlayers: function() {
		$.ajax({
			url: "http://showdowngg:iVRCSs4Gh03xJBsBnSyNlIP6slPtPoeWDzE7zvdW@api.challonge.com/v1/tournaments/showdowngg-ChurningTheButter_57/participants.json",
			type: "GET",
			success: function(obj){
				console.log(obj);
				console.log(JSON.parse(obj)); 
			}
		});
	}	

};