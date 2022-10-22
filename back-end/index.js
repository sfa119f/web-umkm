const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const app = express();
const db = require("./queries");
const port = 3000;

app.use(cors());

app.use(bodyParser.json());
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
);

app.get("/api/products", db.getProducts);
app.get("/api/countProduct", db.getCountProduct);
app.get("/api/countCustomer", db.getCountCustomer);
app.get("/api/countOrder", db.getCountOrder);

app.listen(port, () => {
  console.log(`App running on port ${port}.`);
});
