import './biblequiz.css'
function Correct(){
    return(
        <div>
            <h1>Bible Quiz</h1>
            <h1> 
            The Bible consists of the Old and New Testaments.
            Moses led the Israelites out of Egypt.
            The Sermon on the Mount is found in the Book of Life. 
            </h1>
        </div>
        
    );
}

function Incorrect(){
    return(
        <div>
            <h1>Bible Quiz</h1>
            <h1>The Bible consists of the Old and New Testaments.
            <p className="green">Correct!</p>
            </h1>
            <h1>Moses led the Israelites out of Egypt.
            <p className="green">Correct!</p>
            </h1>
            <h1>The Sermon on the Mount is found in the Book of Life. 
            <p className="red">Incorrect!</p>
            </h1>
        </div>
    );
}

function CorrectOrIncorrect(props){
    const isCorrect = props.isCorrect;
    if(isCorrect){
        return(
            <Correct/>
        );
    }
    return(
        <Incorrect/>
    );
}


export default function biblequiz(){
    return(
        <div>
            <CorrectOrIncorrect
            isCorrect={true}/>
        </div>
    );
}