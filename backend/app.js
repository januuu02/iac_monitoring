require('newrelic');
const express = require("express");

const app = express();

app.get("/", (req, res) => {
  console.log("Backend API hit");
  res.send("Backend Running 🚀");
});

app.listen(3000, () => {
  console.log("Server running on port 3000");
});
