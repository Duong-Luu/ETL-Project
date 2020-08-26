# ETL Project

## Project Summary
The objective of this project was to extract data from websites and available  APIs. The following datasets were then transformed by cleaning, joining, and filtering into nine tables. The object-relational database, PostgreSQL, was used to load the datasets into pgAdmin.

## Finding Data

The following Data Sources were used below:
- [IMDb Website](https://www.imdb.com/chart/top/?ref_=nv_mv_250)
    - Method: Webscraping
    - Used for: Collecting the Top 250 IMDB rated movie list

- [OMDb API](http://www.omdbapi.com/)
    - Method: API Extraction
    - Used for: Collecting IMDb id and other movie related details like actor, director, etc.

- [Utelly API](https://rapidapi.com/utelly/api/utelly?endpoint=apiendpoint_3cad787b-ca7b-449a-84b4-23b40d64fd73)
    - Method: API Extraction
    - Used For: Collecting streaming options for Top 250 IMDb movies

- [Google Search Engine](https://www.google.com/search?&q=)
    - Method: Webscraping
    - Used for: Collecting viewing Streaming Service availability and price 

## Data Cleanup & Analysis

- Data extracted were formated in CSV and JSON files
- The following datasets were then transformed by cleaning, joining, and filtering into nine tables
- The object-relational database, PostgreSQL, was used to load the datasets into pgAdmin. A relational database was selected as the data was in a structured format


## Project Report

- **E**xtract: 
    - `Google_scraping.ipynb`: 
        - contains Google Search Engine Webscraping.
    - `IMBD top 250.ipynb`:
        - contains IMDB website Webscraping.
    - `OMDB API.ipynb`:
        - contains OMDb API extraction.
    -  `Utelly API.ipynb`:
        - contains Utelly API extraction.

- **T**ransform:
    - `transform.ipynb`:
        - contains all datasets that were transformed into tables.

- **L**oad:
    - `database diagram` folder:
        - contains ERD and schema.
    - `Loading_PostgreSQL.ipynb`:
        - contains the creation of and all the tables in the PostgreSQL database.
