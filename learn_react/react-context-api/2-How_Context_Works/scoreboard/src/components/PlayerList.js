import React from 'react';
import { Consumer } from './Context';

const PlayerList = () => {
  return (
    <Consumer>
      { ({ players }) => (
        <React.Fragment>
        {players.map( (player, index) =>
          <Player 
            key={player.id.toString()} 
            index={index}
          />
        )}
      </React.Fragment>
      )}
    </Consumer>
  );
}

export default PlayerList;
