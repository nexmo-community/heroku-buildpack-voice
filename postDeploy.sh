#!/bin/bash


#Debug
echo "--------Printing ENV Vars-----------"
env
echo "-

api_key=$API_KEY 
api_secret=$API_SECRET
cc=$CC
app_id = $APP_ID
name = "Heroku - $HEROKU_APP_NAME" 
url = "https://$HEROKU_APP_NAME.herokuapp.com"

echo "-----> Updating Nexmo App Endpoints"
curl -X PUT "https://api.nexmo.com/v1/applications/$app_id?api_key=$api_key&api_secret=$api_secret&name=$name&type=voice&answer_url=$url/ncco&event_url=$url/event"

echo "-----> Nexmo App configured"