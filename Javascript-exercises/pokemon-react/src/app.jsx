/* jslint esnext: true */

'use strict';

var Pokedex = require('./pokedex.jsx');
var Pokemon = require('./pokemon.jsx');
var Poketype = require('./poketype.jsx')

class App extends React.Component {

    constructor() {
        super();

        this.state = {
            name: "pokedex",
            selectedUri: null,
            list: []
        };
    }

    componentDidMount () {
        $.ajax({
            url: 'http://pokeapi.co/api/v1/pokedex/1/',
            success: (response) => {
                this.setState({
                    list: response.pokemon
                })
            }
        })
    }

    onSelectPokemon(uri) {
        this.setState({
            name: "pokemon",
            selectedUri: uri
        });
    }

    onShowPokedex() {
        this.setState({
            name: "pokedex",
            selectedUri: null
        });
    }

    onSelectPokeType(uri){
        this.setState({
            name: "type",
            selectedUri: uri
        });
    }

    render() {
        if (this.state.name === "pokemon") {
            return (
                <div className="app">
                    <h1>Pokemon</h1>
                    <Pokemon uri={this.state.selectedUri} onSelectPokeType={this.onSelectPokeType.bind(this)} />
                    <a href="#" onClick={this.onShowPokedex.bind(this)}>show pokedex</a>
                </div>
            );
        }
         else if (this.state.name === "type") {
            return (
                <div className="app">
                    <h1>Pokemon</h1>
                    <Poketype poketype={this.state.selectedUri}  />
                    
                </div>
            );
        }
        else if (this.state.name === "pokedex")
        return (
            <div className="app">
                <h1>Pokedex</h1>
                <Pokedex list={this.state.list}
                         onSelectPokemon={this.onSelectPokemon.bind(this)}/>
            </div>
        );
    }

}
module.exports = App;