window.createRouter = function(){
	var Router = ReactRouter.Router;
	var Route = ReactRouter.Route;
	var IndexRoute = ReactRouter.IndexRoute;
	var rootEl = document.getElementById('content');

	App = React.createClass({
		render: function(){
			return (
				<div id="wrapper">
					<div id="outer-content-wrapper">
					HELLO!!!
					</div>
				</div>
			)
		}
	});

	React.render((
		<Router>
			<Route path="/" component={App}>
			</Route>
		</Router>
		), rootEl); 
}; 