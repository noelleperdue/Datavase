const express = require("express");
const app = express();
const PORT = 8080;
app.set("view engine", "ejs");

app.get("/", (req, res) => {
  res.render("home");
});

app.listen(PORT, () => {
  console.log("App listening on port " + PORT);
});
