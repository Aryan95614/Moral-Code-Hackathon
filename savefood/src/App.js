import logo from './logo.svg';
import './App.css';
function App() {
  return (
    
    <>
      

      <div className=".content">
        <div className="header">
            <h1 className="center-title"> Plan </h1>
            <h3>By: Aryan Dhawan, Pakhi Gupta, Linda Gao, and Nicholas Ghattas </h3>
        </div>

        <div className="for-yourself">
            <h2>
              Calculate for yourself!
            </h2>

            <p>
              This Portion of the website is dedicated for you to<br /> 
              calculate your caloric intake and<br /> possible adjustments
              that could be made!
            </p>

            <div className="position-image">
              <img src="https://cdn-icons-png.flaticon.com/512/30/30774.png" alt="Person with Calculator Text"/>
            </div>

            


            <div className="style-button-for-yourself">   
              <a href="/personal">
                Start
              </a>
              
            </div> 

        </div>

        <div className="for-friends">
            <h2>
              Calculate for your friends!
            </h2>

            <p>
              Let us calculate what you need to include <br/>
              for your caloric intake. You could have a chance <br />
              to save food. 
            </p>

            <div className="position-image-themselves">
              <img src="https://cdn4.iconfinder.com/data/icons/travel-gang/512/Travel_7-512.png" alt="Person with Calculator Text"/>
            </div>

            


            <div className="style-button-for-yourself">              
              <button>
                Start Calculating 
              </button>
            </div> 

        </div>
        
      </div>
    </>

  );
}

export default App;
