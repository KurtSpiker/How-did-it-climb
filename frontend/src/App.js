import logo from './logo.svg';
import './App.css';
import React from 'react';


const BACKEND_API_URL = process.env.BACKEND_API_URL || 'http://localhost:8020';

const fetchContent = async (updateContent) => {
  const response = await fetch(`${BACKEND_API_URL}/gyms`,{
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    },
  });
  const data = await response.json();
  updateContent(data.content);
};

function App() {
  const [content, updateContent] = React.useState('Waiting for a response from Rails...');
  React.useEffect(() => {
    fetchContent(updateContent);
  }, []);

  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        {content}
        <p>
          Edit theaaa <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;
