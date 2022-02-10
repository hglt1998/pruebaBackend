import { config as dotenv } from "dotenv";
dotenv();

export const config = {
  host: process.env.DB_HOST || "localhost",
  user: process.env.DB_USER || "hglt1998",
  password: process.env.DB_PASSWORD || "Password123._",
  database: process.env.DB_DATABASE || "taskdb",
};
