# Sample Vaadin project for testing 
##### Project Base for Vaadin Flow and Spring Boot

* Project starter downloaded from (https://vaadin.com/start/latest)
* Spring Boot Tech Stack
* Vaadin 14.0.9 (compatibility mode)

## Some tests

* FullCalendar Addon (https://github.com/stefanuebe/vaadin_fullcalendar)
* Configuration with skipEs5 packaging configuration
  - issue found: https://github.com/vaadin/flow/issues/6683


## Run

* mvn clean package -Pproduction
* java -jar target/samplevaadinproject-1.0-SNAPSHOT.jar

## Run with Docker

* docker build -t ara_alpine .



