import { useState } from 'react'
import './App.css'
import Hello from"./components/Hello";
import Welcome from"./components/Welcome";
import ParentComponent from"./components/ParentComponent";

function App() {

  return (
    <>
      <div>
        <h1>NEIL BERCES</h1>
        <Hello/>
        <Welcome/>
        <ParentComponent/>
      </div>
    </>
  )
}

export default App
