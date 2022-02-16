export const options = {
  definition: {
    openapi: "3.0.0",
    info: {
      title: "Tasks API",
      version: "1.0.0",
      description: "A simple express library API",
    },
    servers: [
      {
        url: "http://localhost:1025",
      },
    ],
  },
  apis: ["./src/routes/**/*.js"],
};
