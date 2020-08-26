DROP TABLE IF EXISTS top_imdb;
DROP TABLE IF EXISTS movie;
DROP TABLE IF EXISTS movie_actor;
DROP TABLE IF EXISTS movie_director;
DROP TABLE IF EXISTS streaming_service;

create table top_imdb(
        imdb_id  VARCHAR  not null,
    movie_title  VARCHAR  not null,
    PRIMARY KEY  (imdb_id)
);

create table movie(
        imdb_id  VARCHAR  not null,
      imdb_rank  INT      not null,
          title  VARCHAR  not null,
           year  INT      not null,
        runtime  DECIMAL  not null,
          rated  VARCHAR  not null,
    imdb_rating  DECIMAL  not null,
    production   VARCHAR  not null,    
    PRIMARY KEY  (imdb_id),
    FOREIGN KEY  (imdb_id) REFERENCES top_imdb (imdb_id) 
);

create table movie_actor(
        imdb_id  VARCHAR  not null,
          actor  VARCHAR  not null,
    FOREIGN KEY  (imdb_id) REFERENCES top_imdb (imdb_id) 
);


create table movie_director(
        imdb_id  VARCHAR  not null,
       director  VARCHAR  not null,
    FOREIGN KEY  (imdb_id) REFERENCES top_imdb (imdb_id) 
);

create table movie_stream(
       imdb_id  VARCHAR   not null,
    service_name  VARCHAR   not null,
   FOREIGN KEY  (imdb_id)    REFERENCES top_imdb (imdb_id)
);

