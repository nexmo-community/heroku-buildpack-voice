#Heroku Buildpack - Voice

Simple Heroku Buildpack to setup a Nexmo Voice application, purchse a new Phone Number and Link that number to the applicaiton.


##Use
This buildpack is designed to be used in conjunction with an `app.json` manifest.

It should be called in addition to whatever language specific buildpack you are using eg python, node etc.

The applicaiton will require 4 Environment Varibles to be setup (usually done in app.json)

`API_KEY` - Your Nexmo API Key
`API_SECRET` - Your Nexmo API Secret
`CC` The ISO-3361-2 Country code where you want a number to be purchased
`CREATE_NEXMO_APP` - Should be set to `yes` if you want an app and phone number to be created, set to know to skip the process, after te buildpack has run it will be set to done to prevent duplication.

