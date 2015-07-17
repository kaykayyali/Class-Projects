class Contacts extends React.Component{

	constructor(){
		super()
		this.state = {
			contacts: []
		}
	}
	componentDidMount(){
		$.ajax({
			url: '/contacts.json',
			success: (server_contacts) => {
				this.setState({
					contacts: server_contacts
				})
			}
		})
	}

	render(){
		var contacts = this.state.contacts.map((contact) => {
			return <Contact name={contact.name} email={contact.email} id={contact.id} phoneNumber={contact.phone_number} />
		})
		return(
			<div> 
				{contacts}
			</div>
			)
	}
}