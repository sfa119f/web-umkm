const { dbConfig } = require("./dbConfig");

const getProducts = (req, res) => {
  dbConfig.query(
    `select * from products order by jumlah desc limit ${
      req.query.limit ? req.query.limit : "all"
    }`,
    (err, result) => {
      if (err) throw err;
      res.status(200).json(result.rows);
    }
  );
};

const getCountProduct = (req, res) => {
  dbConfig.query("select count(*) from products", (err, result) => {
    if (err) throw err;
    res.status(200).json(result.rows[0]);
  });
};

const getCountCustomer = (req, res) => {
  dbConfig.query("select count(*) from customers", (err, result) => {
    if (err) throw err;
    res.status(200).json(result.rows[0]);
  });
};

const getCountOrder = (req, res) => {
  dbConfig.query("select count(*) from orders", (err, result) => {
    if (err) throw err;
    res.status(200).json(result.rows[0]);
  });
};

module.exports = {
  getProducts,
  getCountProduct,
  getCountCustomer,
  getCountOrder,
};
