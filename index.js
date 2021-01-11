//require
const consoleTable = require("console.table");
const inquirer = require("inquirer");


//Responsible for all the prompt
const db = require("./db");

//questions 
const questions = [{
    type: "list",
    name: "action",
    message: "What would you like to do?",
    choices: ["view all employee", "add an employee", "update an employee roles",
        "view all department", "add department", "view roles", "add roles"
    ]
}];


// function to initialize program
function init() {
    //when question is pass to inquerer,
    return inquirer.prompt(questions)

    .then(function (answers) {
        console.log(answers);

        //if select view all employee
        if (answers.action === "view all employee") {
            db.searchAllEmployees().then(
                function (result) {
                    console.table(result);
                }
            )

        }

        //add employee
        if (answers.action === "add an employee") {
            db.searchAllEmployees().then(
                function (result) {
                    console.table(result);
                }
            )

        }

        //update employee role
        if (answers.action === "update an employee roles") {
            db.searchAllEmployees().then(
                function (result) {
                    console.table(result);
                }
            )

        }
        //view all department
        if(answers.action === "view all department"){
            db.searchAllEmployees().then(
                function(result){
                    console.table(result);
                }
            )
        }
        //add department
        if(answers.action === "add department"){
            db.searchAllEmployees().then(
                function(result){
                    console.table(result);
                }
            )
        }

        //view roles
        if(answers.action === "view roles"){
            db.searchAllEmployees().then(
                function(result){
                    console.table(result);
                }
            )
        }

        //add roles
        if(answers.action === "add roles"){
            db.searchAllEmployees().then(
                function(result){
                    console.table(result);
                }
            )
        }

        

        }

    )}
    
// function call to initialize program
init();