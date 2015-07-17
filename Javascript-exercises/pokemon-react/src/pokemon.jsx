/* jslint esnext: true */

'use strict';

class Pokemon extends React.Component {

    constructor() {
        super();

        this.state = { types: [] }
    }

    componentDidMount() {
        this.loadPokemonDetails(this.props.uri)
    }

    clickOnType(event) {
        event.preventDefault()
        
        var uri = event.target.getAttribute('data-uri');
        console.log(uri);
        this.props.onSelectPokeType(uri)
    }

    render() {
        return (
            <div className="pokemon">
                <h2>{this.state.name}</h2>

                {this.pokemonImage()}

                <dl>
                    <dt>Height</dt>
                    <dd>{this.state.height}</dd>
                    <dt>Weight</dt>
                    <dd>{this.state.weight}</dd>
                    {this.generateTypes()}

                </dl>
            </div>
        );
    }

    pokemonImage() {
        if (this.state.image) {
            return <img src={this.state.image} />
        }
    }

    loadPokemonDetails(uri) {
        $.ajax({
            url: 'http://pokeapi.co/' + uri,
            success: (pokemon) => {
                this.setState(pokemon)
                this.loadSprite(pokemon.sprites[0].resource_uri)
            }
        })
    }

    loadSprite(uri) {
        $.ajax({
            url: 'http://pokeapi.co' + uri,
            success: (sprite) => {
                this.setState({
                    image: 'http://pokeapi.co' + sprite.image
                })
            }
        })
    }

    generateTypes(){
        var rows = []
       this.state.types.forEach((type) => {
             rows.push(<dd><a href="#" data-uri={type.resource_uri} onClick={this.clickOnType.bind(this)}>{type.name}</a></dd>)

       });
       return <div><dt>Types</dt>{rows}</div>
      
       // "resource_uri": "/api/v1/type/2/"

    }

}
module.exports = Pokemon;