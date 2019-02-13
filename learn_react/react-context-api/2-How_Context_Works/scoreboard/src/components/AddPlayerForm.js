import React from 'react';
import { Consumer } from './Context';

const AddPlayerForm = () => {

  const playerInput = React.createRef();


  return (
    <Consumer>
      { context => {
        const handleSubmit = (e) => {
          e.preventDefault();
          context.addPlayer(playerInput.current.value);
          e.currentTarget.reset();
        }

        return (
          <form onSubmit={handleSubmit}>
          <input 
            type="text"
            ref={playerInput}
            placeholder="Enter a player's name"
          />
          
          <input 
            type="submit"
            value="Add Player"
          />
        </form>
        );          
      }}
    </Consumer>

  );
}

export default AddPlayerForm;
