'use strict';

class HelloWorld extends React.Component{
	render(){
		return(<div>
			<h1>Name: {this.props.name}</h1>
			<h3>Age: {this.props.age} </h3>
		</div>)
	}
}