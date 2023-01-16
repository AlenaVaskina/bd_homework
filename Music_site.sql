 create table if not exists ganre (
 	name varchar(60) not null,
 	id SERIAL primary key
 );
 
create table if not exists artist (
	artist_name varchar(60) not null,
	id SERIAL primary key
);

create table if not exists ganre_artist (
	ganre_id integer references ganre(id),
	artist_id integer references artist(id),
	constraint pk primary key (ganre_id, artist_id)
);

create table if not exists album (
	name varchar(60) not null,
	year_release varchar(60) not null,
	artist_name varchar(60) not null,
	id SERIAL primary key
);

create table if not exists album_artist (
	album_id integer references album(id),
	artist_id integer references artist(id),
	constraint emp_pk primary key (album_id,artist_id)
);

create table if not exists music_track(
	name varchar(60) not null,
	duration varchar(60) not null,
	album varchar(60) not null,
	id SERIAL primary key references album(id)
);

create table if not exists collection (
	name varchar(60) not null,
	year_release varchar(60) not null,
	id SERIAL primary key
);

create table if not exists music_collection (
	collection_id integer references collection(id),
	music_track_id integer references music_track(id)
);