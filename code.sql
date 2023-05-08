create table genre (
	genre_id serial primary key,
	name varchar(60)
);

create table artist (
	artist_id serial primary key,
	name varchar(60)
);

create table track (
	track_id serial primary key,
	name varchar(60),
	duration integer,
	album_id integer references album (album_id)
);

create table compilation (
	compilation_id serial primary key,
	name varchar(60),
	release_date date
);

create table album (
	album_id serial primary key,
	name varchar(60),
	release_date date
);

create table artist_genre (
	artist_id integer references artist (artist_id),
	genre_id integer references genre (genre_id)
);

create table artist_album (
	artist_id integer references artist (artist_id),
	album_id integer references album (album_id)
);

create table track_compilation (
	track_id integer references track (track_id),
	compilation_id integer references compilation (compilation_id)
);
