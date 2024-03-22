CREATE TABLE "movie_theatre" (
  "theatre_id" SERIAL,
  "name" VARCHAR(150),
  "location" VARCHAR(150),
  "capacity" integer,
  "number_of_screen" integer ,
  PRIMARY KEY ("theatre_id")
);

--drop table movie_theatre;

CREATE TABLE "screen" (
  "screen_id" SERIAL,
  PRIMARY KEY ("screen_id"),
  "capacity" Integer,
  "theatre_id" Integer references movie_theatre("theatre_id")
);

CREATE TABLE "movie" (
  "movie_id" SERIAL,
  "title" VARCHAR(200),
  "genre" VARCHAR(150),
  "release_date" VARCHAR(100),
  "duration" Integer ,
  PRIMARY KEY ("movie_id")
);


CREATE TABLE "show_time" (
  "show_time_id" SERIAL,
  "movie_id" Integer,
  "screen_id" Integer,
  "start_time" Integer,
  PRIMARY KEY ("show_time_id"),
  CONSTRAINT "FK_Show_time.start_time"
    FOREIGN KEY ("start_time")
      REFERENCES "screen"("screen_id")
);

CREATE TABLE "ticket_table" (
  "ticket_id" SERIAL,
  "show_time_id" Integer,
  "seat_num" Integer,
  PRIMARY KEY ("ticket_id")
);



CREATE TABLE "customer" (
  "customer_id" SERIAL,
  "name" VARCHAR(150),
  "email" VARCHAR(200),
  "phone" integer,
  PRIMARY KEY ("customer_id")
);

select * from customer; 

insert into customer(name, email, phone)
values
('Jazmine Vazquez', 'lkasjdf@gmail.com', 2020),
('Berlynn Martinez', 'askld@yahoo.com', 19665),
('Antonio Vazquez', 'alskj@gmail.com', 131231);



select * from movie_theatre;


insert into movie_theatre(name, location, capacity, number_of_screen)
values ('Regal', '123 somethingway', 400, 12);

select * from screen;

insert into screen(capacity, theatre_id)
values (420, 1);


select * from movie;

insert into movie(title, genre, release_date,duration)
values ('Batman', 'Action', '11-23-2021',144);

select * from ticket_table;

insert into ticket_table(show_time_id, seat_num)
values (1, 25);


select * from show_time

insert into show_time(show_time_id, movie_id, screen_id, start_time)
values (1, 1, 2, 2.30);









