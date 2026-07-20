const express = require("express");
const cors = require("cors");

const app = express();

app.use(cors());

const PORT = process.env.PORT || 5000;

app.get("/api/dashboard", (req, res) => {

res.json({

platform:"Buvan's Cloud Platform",

environment:process.env.APP_ENV || "DEV",

version:process.env.APP_VERSION || "1.0.0",

clusterHealth:"Healthy",

nodes:3,

pods:18,

cpu:"32%",

memory:"48%",

activeProjects:12,

deployments:5,

completed:12,

pending:5,

running:7,

timestamp:new Date()

});

});

app.listen(PORT,()=>{

console.log(`Server running on ${PORT}`);

});
