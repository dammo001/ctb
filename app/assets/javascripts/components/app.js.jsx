var Button = ReactBootstrap.Button; 



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
					<div id="content-wrapper">{this.props.children}</div> 
					</div>
				</div>
			)
		}
	});

	ReactDOM.render((
		<Router>
			<Route path="/" component={App}>
				<IndexRoute component={Index}/> 
			</Route>
		</Router>
		), rootEl); 
}; 