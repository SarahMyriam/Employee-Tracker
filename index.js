//require
const consoleTable = require("console.table");


//Responsible for all the prompt
const db = require("./db");

db.searchAllEmployees().then (
    function (result){
        console.table(result);
    }
)

//questions 
const questions = [
    {
    type: "list",
    name: "action",
    message: "What would you like to do?",
    choices: ["view all employee", "update an employee roles","add an employee",
            "view all department","add department", "view roles", "add roles"]
}];


// function to initialize program
function init() {
//when question is pass to inquerer,
return inquirer.prompt(questions).then(function(answers){
    console.log(answers);

})

}
// function call to initialize program
init();
