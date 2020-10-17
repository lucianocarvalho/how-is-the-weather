# How is the weather?

**How is the weather** is a project developed for studies purposes.

## Challenge

Create a micro-service able to accept RESTful requests receiving as parameter either city name or lat long coordinates and returns a playlist (only track names is fine) suggestion according to the current temperature.

* If temperature (celcius) is above 30 degrees, suggest tracks for party
* In case temperature is between 15 and 30 degrees, suggest pop music tracks
* If it's a bit chilly (between 10 and 14 degrees), suggest rock music tracks
* Otherwise, if it's freezing outside, suggests classical music tracks

Reference: **[ifood/ifood-backend-advanced-test](https://github.com/ifood/ifood-backend-advanced-test)**.

## About

This project uses:
* Java 11.0.8
* Spring Boot 2.3.4

#### Containers

| Container       | Image                 | Port  |
|-----------------|-----------------------|-------|
| api.weather.dev | `openjdk:11-jre`      | 8080  |

#### Running locally

```bash
# Clone the repository
git clone git@github.com:lucianocarvalho/how-is-the-weather.git

# Setup the containers
cd how-is-the-weather && docker-compose up -d
```

Open **[http://localhost:8080/](http://localhost:8080/)** in your browser.