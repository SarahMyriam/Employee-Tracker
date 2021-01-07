//require
const consoleTable = require("console.table");


//Responsible for all the prompt
const db = require("./db");

db.searchAllEmployees().then (
    function (result){
        console.table(result);
    }
)



