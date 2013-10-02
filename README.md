README
======

Using httparty to access the edmund's api, to search for vehicle by VIN, and retrieve and store results.

1. Clone this repo, create an .env file for each environment including local dev. A rake task pushes values from the .env files to heroku. The only needed value at present is `edmunds_key`.
2. Add a heroku remote, and go!

[x] build a simple form that returns results from the api
[ ] fix the tests
[ ] add validations
[ ] make it pretty
