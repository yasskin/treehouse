import React, { Component } from 'react';
import { Provider } from './Context';
import Header from './Header';
import PlayerList from './PlayerList';
import AddPlayerForm from './AddPlayerForm';

class App extends Component {
  state = {
    players: [
      {
        name: "Guil",
        score: 0,
        id: 1
      },
      {
        name: "Treasure",
        score: 0,
        id: 2
      },
      {
        name: "Ashley",
        score: 0,
        id: 3
      },
      {
        name: "James",
        score: 0,
        id: 4
      }
    ]
  };

  // player id counter
  prevPlayerId = 4;

  handleScoreChange = (index, delta) => {
    this.setState( prevState => ({
      score: prevState.players[index].score += delta
    }));
  }

  handleAddPlayer = (name) => {
    this.setState( prevState => {
      return {
        players: [
          ...prevState.players,
          {
            name,
            score: 0,
            id: this.prevPlayerId += 1
          }
        ]
      };
    });
  }

  handleRemovePlayer = (id) => {
    this.setState( prevState => {
      return {
        players: prevState.players.filter(p => p.id !== id)
      };
    });
  }

  render() {
    return (
      <Provider>
        <div className="scoreboard">
          <Header players={this.state.players} />

          <PlayerList 
            players={this.state.players} 
            changeScore={this.handleScoreChange}
            removePlayer={this.handleRemovePlayer}   
          />
          
          <AddPlayerForm addPlayer={this.handleAddPlayer} />
        </div>
      </Provider>
    );
  }
}

export default App;
