import logo from './logo.svg';
import './App.css';
import React from 'react';
import NavigationBar from './components/NavigationBar';
import User from './components/User';
import Climb from './components/Climb';
import Creation from './components/Creation';
import Home from './components/Home';
import { Route, Routes } from 'react-router-dom';
import Login from './components/Login';


const BACKEND_API_URL = process.env.BACKEND_API_URL || 'http://localhost:8020';

const fetchContent = async (updateContent) => {
  const response = await fetch(`${BACKEND_API_URL}/api/gyms`,{
    method: "GET",
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    },
  });
  const data = await response.text();
  updateContent(data);
};

function App() {
  const [content, updateContent] = React.useState('Waiting for a response from Rails...');
  React.useEffect(() => {
    fetchContent(updateContent);
  }, []);

  return (
    <div className="App">
      <NavigationBar>

      </NavigationBar>
      <Routes>
        <Route path="/" element={<Home/>}/>
        <Route path="/climb:id" element={<Climb/>}/>
        <Route path="/user:id" elemetn={<User/>}/>
        <Route path="/create" element={<Creation/>}/>
        <Route path="/login" element={<Login/>}/>
      </Routes>

      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        {content}
        <p>
          Edit the <code>src/App.js</code> and save to reload.
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
