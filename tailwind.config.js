/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./templates/*.jinja",
            "./templates/partials/*.jinja",
            "./templates/*.html",
            "./templates/partials/*.html"
          ],
  theme: {
    extend: {},
  },
  plugins: [],
}

