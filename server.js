const express = require("express");
const app = express();
const PORT = 8080;
app.set("view engine", "ejs");
app.use(express.static('public'));

app.get("/", (req, res) => {
  res.render("home");
});

app.get("/plant", (req, res) =>  {
  res.render("plantPage")
})

app.listen(PORT, () => {
  console.log("App listening on port " + PORT);
});
