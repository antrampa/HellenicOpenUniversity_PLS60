
drop table if exists ACTOR;

create table ACTOR (
Name varchar(30) primary key,
Date_of_birth date,
Sex varchar(6) not null,
Nationality varchar(15)
);


drop table if exists MOVIE; 

create table MOVIE (
 Title varchar(30),
 Year int,
 Runtime int,
 primary key (Title, Year)
); 

drop table if exists PLAYS; 

create table PLAYS (
    Name varchar(30),
    Title varchar(30),
    Year int,
    Role varchar(30),
    primary key (Name, Title, Year),
    foreign key (Name)
     references 
      ACTOR(Name)
    on update cascade, 
    foreign key (Title, Year)
     references 
      MOVIE(Title, Year)
    on delete cascade
    on update cascade
);


drop table if exists MOVIE_GENRE;

create table MOVIE_GENRE (
    Title varchar(30),
    Year int,
    Genre varchar(15),
    primary key (Title, Year, Genre),
    foreign key (Title, Year)
        references 
            MOVIE(Title,Year)
    on delete cascade
    on update cascade 
);
