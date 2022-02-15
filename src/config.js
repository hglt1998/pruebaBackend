import { config as dotenv } from "dotenv";
dotenv();

export const config = {
  host: process.env.DB_HOST || "localhost:3306",
  user: process.env.DB_USER || "stats",
  password: process.env.DB_PASSWORD || "Password123._",
  database: process.env.DB_DATABASE || "stats",
};

// export const config = {
//   host: process.env.DB_HOST || "localhost",
//   user: process.env.DB_USER || "root",
//   password: process.env.DB_PASSWORD || "",
//   database: process.env.DB_DATABASE || "stats",
// };
