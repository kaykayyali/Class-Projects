/* jslint esnext: true */

'use strict';

class Poketype extends React.Component {

 

    constructor() {
        super();
        this.state = {
        	type: []
        }
    }

    componentDidMount() {
       this.loadTypeDetails(this.props.uri)
    }

    render(){
    	return (
    		<div className="pokedex-container">
    			<div>{this.state.type}</div>
    		</div>

    		)
    }

    loadTypeDetails(uri) {
    	  $.ajax({
            url: 'http://pokeapi.co/' + uri,
            success: (poketype) => {
                this.setState({
                	type: poketype
                }) 


                
            }
        });
    }




}
module.exports = Poketype ; 