CREATE TABLE movies(movieID NUMBER(10) NOT NULL,title varchar2(150),movieyear integer,rtAllCriticsRating NUMBER(*,1),rtAllCriticsNumReviews integer,rtTopCriticsRating NUMBER(*,1),rtTopCriticsNumReviews integer,rtAudienceRating NUMBER(*,1),rtAudienceNumRating integer,PRIMARY KEY (movieID));
CREATE TABLE movie_countries(movieID NUMBER(10) NOT NULL,country VARCHAR(30),PRIMARY KEY(movieID,country));
CREATE TABLE movie_genres(movieID NUMBER(10),genre VARCHAR2(20),PRIMARY KEY(movieID,genre));
CREATE TABLE movie_locations(movieID NUMBER(10),location1 VARCHAR2(60));
CREATE TABLE tags(tagID NUMBER(10) NOT NULL,tagvalue VARCHAR(60),PRIMARY KEY (tagID));
CREATE TABLE movie_tags(movieID NUMBER(10),tagID NUMBER(10),tagWeight NUMBER(10),PRIMARY KEY(tagID,movieID));

ALTER TABLE movie_tags ADD CONSTRAINT Tagm_fk FOREIGN KEY(movieID) REFERENCES movies(movieID) ON DELETE CASCADE;
ALTER TABLE movie_tags ADD CONSTRAINT Tagt_fk FOREIGN KEY(tagID) REFERENCES tags(tagID) ON DELETE CASCADE;
ALTER TABLE movie_countries ADD CONSTRAINT C_fk FOREIGN KEY(movieID) REFERENCES movies(movieID) ON DELETE CASCADE;
ALTER TABLE movie_genres ADD CONSTRAINT G_fk FOREIGN KEY(movieID) REFERENCES movies(movieID) ON DELETE CASCADE;
ALTER TABLE movie_locations ADD CONSTRAINT L_fk FOREIGN KEY(movieID) REFERENCES movies(movieID) ON DELETE CASCADE;

CREATE INDEX gen_ind ON MOVIE_GENRES(GENRE);
CREATE INDEX country_ind ON MOVIE_COUNTRIES(COUNTRY);
CREATE INDEX location_ind ON MOVIE_LOCATIONS(LOCATION1);

