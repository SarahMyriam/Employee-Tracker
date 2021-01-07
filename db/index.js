//responsible for the functions
const connection = require("./connection.js");

function searchAllEmployees(){
    return connection.query(
        "SELECT * from employee"
    );
}
//exporting the collection of the function inside the object
module.exports = {
    searchAllEmployees
}
