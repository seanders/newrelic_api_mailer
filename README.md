### New Relic Mail API

####How to play
Send a POST request to
```
http://new-relic-mail-api.herokuapp.com/mail
```
with these fields
```
Content-Type: application/json
Payload: { "to": "sean@seanders.me", "subject": "Hello!", "body": "Api fun times!"}
```
You must include a `to` field.
