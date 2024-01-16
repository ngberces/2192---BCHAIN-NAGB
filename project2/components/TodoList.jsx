import React from "react"
import './TodoList.css'
export default class TodoList extends React.Component{
    render() {
        return(
            <div class="board">
                <div class="papers">
                    <h1>To Do List</h1>
                    <div class="list check">Clean Porch</div>
                    <div class="list uncheck">Wash Car</div>
                    <div class="list uncheck">Attend BCHAIN Class</div>
                </div>
            </div>
     
        );
    }
}