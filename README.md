# Heroku Buildpack - Voice

Use this Heroku Buildpack to set up a Nexmo Voice application, purchase a new Phone Number and Link that number to the application.

## Use
This buildpack is designed to be used in conjunction with an `app.json` manifest.

The applicaiton will require 4 Environment Varibles to be setup (usually done in app.json)

`API_KEY` - Your Nexmo API Key
`API_SECRET` - Your Nexmo API Secret
`CC` The ISO-3361-2 Country code where you want a number to be purchased
`CREATE_NEXMO_APP` - Should be set to `yes` if you want an app and phone number to be created, set to no to skip the process, after the buildpack has run it will be set to done to prevent duplication.


See the example app.json included in this repo to use as a base, note that if you are including this buildpack then you need to also specify the buildpack which will run your code in the appropriate language as this will overide herokus defatul detection, in the example app.json this is set to `heroku/python` 
https://devcenter.heroku.com/articles/buildpacks#officially-supported-buildpacks


