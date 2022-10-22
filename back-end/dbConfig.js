const Pool = require("pg").Pool;
const dbConfig = new Pool({
  user: "postgres",
  host: "localhost",
  database: "warung_ijo",
  password: "kuro69",
  port: 5432,
});

module.exports = { dbConfig };
