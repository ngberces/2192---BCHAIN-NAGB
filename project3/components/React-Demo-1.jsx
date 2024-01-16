import './React-Demo-1.css'
function Greeting() {
    return(
        <h1>Hello! I am a Standard function.</h1>
    );
}

    const ArrowGreeting = () => (
        <h1> Hello! I am an arrow function.</h1>
    );

    function ShinyButton(){
        const handleClick = () => {
            alert('You clicked me!');

        }
        return(
            <button onClick={handleClick}>
                click this button!
            </button>
        );
    }

    export default ShinyButton;
