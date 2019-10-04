# Bike like you

An MVP system that provides a bicycle transport for citizens.
Where you send the information to a mobile app that displays the trips made by the user,  which contains the fields: origin station, destination station, trip start date / time, trip end date / time, distance traveled and which bike used.
And also a web app where you can access via facebook and the admin can inform you that the bike is adjusted and create new places.

## Built With

* Architecture: MVC, as a convention in RoR, and Rest API, for client-server communication with the app.
* Database: Postgresql.
* Frameworks: Ruby on Rails 6

### Links API:

Links that the mobile app will fetch and post on API.

```
  GET /api/v1/stations
```

```
  POST /api/v1/bikes/catch

  "id":1
```

```
  POST /api/v1/bikes/give_back

  "id": 1,
  "destination": 3,
  "distance": 1000,
  "with_problem": false
```

