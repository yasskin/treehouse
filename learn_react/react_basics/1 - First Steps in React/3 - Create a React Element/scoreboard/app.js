// const title = React.createElement(
//   'h1',
//   { id: 'main-title', title: 'This is a title.' },
//   'My first React element!'
// );

// <h1 id="main-title" title="This is a title.">My first React element!</h1>
// react makes an Object that describes a DOM node

const desc = 'I just learned how to create a React node and render it into the DOM.';

// const header = React.createElement(
//   'header',
//   null,
//   title,
//   desc
// )

const myTitleID = 'main-title';
const name = 'Noah';

const header = (
  <header>
    {/* This is a react comment */}
    <h1 id={ myTitleID }>{ name }'s First React Element'</h1>
    <p className="main-desc">{ desc }</p>
    <input value={10*20}/>
  </header>
);

ReactDOM.render(
  header,
  document.getElementById('root')
);
