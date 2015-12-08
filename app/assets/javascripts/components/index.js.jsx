
var Table = ReactBootstrap.Table; 
var ButtonInput = ReactBootstrap.ButtonInput; 
var Input = ReactBootstrap.Input; 

Index = React.createClass({
	updatePlayers: function(){
		ApiUtil.getPlayers();
	},

	render: function(){
		return (
			<div> 
				<Table striped bordered condensed hover>
		    		<thead>
			      		<tr>
				        <th>#</th>
				        <th>Name</th>
				        <th>Score</th>
				        <th>Win/Loss</th> 
				      	</tr>
			    	</thead>
			    	<tbody>
				      <tr>
				        <td>1</td>
				        <td>Mark</td>
				        <td>Otto</td>
				        <td>@mdo</td>
				      </tr>
				      <tr>
				        <td>2</td>
				        <td>Jacob</td>
				        <td>Thornton</td>
				        <td>@fat</td>
				      </tr>
				      <tr>
				        <td>3</td>
				        <td colSpan="2">Larry the Bird</td>
				        <td>@twitter</td>
				      </tr>
				    </tbody>
			  </Table>
			  <form> 
				  <Input type="text" label="url" placeholder="enter tournament name here"/> 
				  <ButtonInput type="submit" onClick={this.updatePlayers}/> 
			  </form> 
		  </div> 
		)
	}
});