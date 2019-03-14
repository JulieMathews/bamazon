var mysql = require("mysql");

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "",
  database: "bamazon-JMM"
});

//  CRUD

connection.connect(function(err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId + "\n");
    createProduct();
  });
  
  function createProduct() {
    console.log("Inserting a new product.\n");
    var query = connection.query(
      "INSERT INTO products SET ?",
      function(err, res) {
        console.log(res.affectedRows + " product inserted!\n");
        updateProduct();
      }
    );
  
    console.log(query.sql);
  }
  
  function updateProduct() {
    console.log("Updating product.\n");
    var query = connection.query(
      "UPDATE products SET ? WHERE ?",
      function(err, res) {
        console.log(res.affectedRows + " product updated!\n");
        deleteProduct();
      }
    );
  
    console.log(query.sql);
  }
  
  function deleteProduct() {
    console.log("Deleting product.\n");
    connection.query(
      "DELETE FROM products WHERE ?",
      function(err, res) {
        console.log(res.affectedRows + " product deleted!\n");
        readProducts();
      }
    );
  }
  
  function readProducts() {
    console.log("Selecting product.\n");
    connection.query("SELECT * FROM products", function(err, res) {
      if (err) throw err;
      console.log(res);
      connection.end();
    });
  }