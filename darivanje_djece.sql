drop database if exists darivanje_djece;
create database darivanje_djece;
use darivanje_djece;

create table dijete(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	spol char(1) not null,
	datum_rodenja date not null
);

create table roditelj(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11)
);

create table poklon(
	sifra int not null primary key auto_increment,
	kategorija int not null,
	opis varchar(1000)
);

create table kategorija(
	sifra int not null primary key auto_increment,
	naziv varchar(50) not null,
	dob varchar(2) not null,
	spol char(1)	
);

