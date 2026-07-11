const express = require("express");

const app = express();

const PORT = process.env.PORT || 3000;
const APP_NAME = process.env.APP_NAME || "devops-capstone-backend";
const APP_ENV = process.env.APP_ENV || "dev";
const APP_VERSION = process.env.APP_VERSION || "1.0.0";

app.use(express.json());

app.get("/health", (req, res) => {
  res.status(200).json({
    status: "ok",
    app: APP_NAME,
    environment: APP_ENV
  });
});

app.get("/api/message", (req, res) => {
  res.status(200).json({
    message: `Hello from ${APP_NAME}`,
    environment: APP_ENV,
    version: APP_VERSION,
    timestamp: new Date().toISOString()
  });
});

app.listen(PORT, () => {
  console.log(`${APP_NAME} is running on port ${PORT} in ${APP_ENV} environment`);
});
