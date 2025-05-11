/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './templates/**/*.html',  // Scan all HTML files in templates folder
    './static/src/**/*.js',  // Optional: Include JS files if needed
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}