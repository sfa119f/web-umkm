import axios from "axios";

const domain = "http://localhost:3000/";

export const jsonWarungIjo = axios.create({
  baseURL: domain,
  headers: {
    "Content-type": "application/json",
  },
});
