'use strict';

class Contact extends React.Component{

	constructor(){
		super();
		this.state = {
			employees: [],
			employeesShowing: false

		}
	}

	getEmployees(){
		
		$.ajax({
			url: '/contacts/' + this.props.id + '/employees.json',
			success: (server_employees) => {
				console.log(server_employees)
				this.setState({
					employees: server_employees
				})
			}
		})
		this.setState({
			showResults: !this.state.showResults
		})
	}


	render(){
		if (this.state.employees){
			var employees = this.state.employees.map((employee) => {
				return <ul>{employee.name}</ul>
			})
		}

		return(
			<div>
				<h1>{this.props.name}</h1>
				<h3>{this.props.email}</h3>
				<br />
				<span>{this.props.phone_number}</span>
				<button onClick={this.getEmployees.bind(this)}>Get the Employees</button>
				{ this.state.showResults ? <div className="employees">{employees}</div> : null }
				
			</div>
			)
	}


}