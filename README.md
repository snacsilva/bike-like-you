# Bike like you

Um sistema MVP que disponibiliza um transporte de bicicletas para os cidadãos.
Onde envia as informaçẽs para um app mobile que exibe as viagens realizadas pelo usuário, que contém os campos: estação de origem, estação de destino, data/hora inicio da viagem, data/hora término da viagem, distância percorrida e qual a bike ele usou.
E também um app web onde se pode acessar via facebook e o admin pode informar que a bicicleta está ajustada e criar novas vagas. 

==

An MVP system that provides a bicycle transport for citizens.
Where you send the information to a mobile app that displays the trips made by the user,     which contains the fields: origin station, destination station, trip start date / time, trip end date / time, distance traveled and which bike used.
And also a web app where you can access via facebook and the admin can inform you that the bike is adjusted and create new places.

### Built With

* Arquiteruras usadas: MVC, como convenção do RoR, e Rest API, para comunicação cliente-servidor com o app.
* Banco de dados: Postgres.
* Frameworks: Ruby on Rails 6.

==

* Architecture: MVC, as a convention in RoR, and Rest API, for client-server communication with the app.
* Database: Postgresql.
* Frameworks: Ruby on Rails 6

#### Links API:

```
  /api/v1/stations
```

```
  /api/v1/bikes/catch
```

```
  /api/v1/bikes/give_back
```