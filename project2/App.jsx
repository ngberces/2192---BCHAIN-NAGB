import { useState } from 'react'
import './App.css'
import TodoList from"./components/TodoList";
import MovieList from"./components/MovieList";
import BookList from"./components/BookList";

function App() {

  return (
    <>
      <div>
        <h1>NEIL BERCES</h1>
        <TodoList/>
        <MovieList/>
        <BookList/>
      </div>
    </>
  )
}

export default App
