import { config as dotenv } from "dotenv";
dotenv();

export const config = {
  host: process.env.DB_HOST || "http://magical-zhukovsky.217-76-139-29.plesk.page",
  user: process.env.DB_USER || "stats",
  password: process.env.DB_PASSWORD || "Password123._",
  database: process.env.DB_DATABASE || "statsdb",
};

// export const config = {
//   host: process.env.DB_HOST || "localhost",
//   user: process.env.DB_USER || "root",
//   password: process.env.DB_PASSWORD || "",
//   database: process.env.DB_DATABASE || "stats",
// };
