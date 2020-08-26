-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "top_imdb" (
    "imdb_id" varchar   NOT NULL,
    "movie_title" varchar   NOT NULL,
    CONSTRAINT "pk_top_imdb" PRIMARY KEY (
        "imdb_id"
     )
);

CREATE TABLE "movie" (
    "imdb_id" varchar   NOT NULL,
    "imdb_rank" int   NOT NULL,
    "title" varchar   NOT NULL,
    "year" int   NOT NULL,
    "runtime" decimal   NOT NULL,
    "rated" varchar   NOT NULL,
    "imdb_rating" decimal   NOT NULL,
    "production" varchar   NOT NULL
);

CREATE TABLE "movie_actor" (
    "imdb_id" varchar   NOT NULL,
    "actor" varchar   NOT NULL
);

CREATE TABLE "movie_director" (
    "imdb_id" varchar   NOT NULL,
    "director" varchar   NOT NULL
);

CREATE TABLE "movie_stream" (
    "imdb_id" varchar   NOT NULL,
    "service_name" varchar   NOT NULL
);

ALTER TABLE "movie" ADD CONSTRAINT "fk_movie_imdb_id" FOREIGN KEY("imdb_id")
REFERENCES "top_imdb" ("imdb_id");

ALTER TABLE "movie_actor" ADD CONSTRAINT "fk_movie_actor_imdb_id" FOREIGN KEY("imdb_id")
REFERENCES "top_imdb" ("imdb_id");

ALTER TABLE "movie_director" ADD CONSTRAINT "fk_movie_director_imdb_id" FOREIGN KEY("imdb_id")
REFERENCES "top_imdb" ("imdb_id");

ALTER TABLE "movie_stream" ADD CONSTRAINT "fk_movie_stream_imdb_id" FOREIGN KEY("imdb_id")
REFERENCES "top_imdb" ("imdb_id");

