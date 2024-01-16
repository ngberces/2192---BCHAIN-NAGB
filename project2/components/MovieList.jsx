import React from "react"
import './MovieList.css'
export default class MovieList extends React.Component{
    render() {
        return(
            <div class="board">
                <div class="papers">
                    <h1>Movie List</h1>
                    <div class="list check">Movie 1</div>
                    <div class="list uncheck">Movie 2</div>
                    <div class="list uncheck">Movie N</div>
                </div>
            </div>
        );
    }
}