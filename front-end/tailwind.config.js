/** @type {import('tailwindcss').Config} */
module.exports = {
  purge: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],
  content: [],
  theme: {
    extend: {
      screens: {
        xs: "420px",
      },
      colors: {
        "green-light": "#edfeda",
        "green-dark": "#229255",
      },
    },
  },
  plugins: [],
};
