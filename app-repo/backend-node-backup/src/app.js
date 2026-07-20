const express = require("express");

const app = express();

const PORT = process.env.PORT || 3000;
const APP_NAME = process.env.APP_NAME || "devops-capstone-backend";
const APP_ENV = process.env.APP_ENV || "dev";
const APP_VERSION = process.env.APP_VERSION || "1.0.0";

app.use(express.json());

const healthHandler = (req, res) => {
  res.json({
    status: "ok",
    app: APP_NAME,
    environment: APP_ENV,
    version: APP_VERSION,
  });
};

app.get("/health", healthHandler);
app.get("/api/health", healthHandler);

app.listen(PORT, () => {
  console.log(`${APP_NAME} is running on port ${PORT} in ${APP_ENV} environment`);
});
