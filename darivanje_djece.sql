drop database if exists darivanje_djece;
create database darivanje_djece;
use darivanje_djece;

create table dijete(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	spol char(1) not null,
	datum_rodenja date not null,
	roditelj int not null,
	poklon int not null
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
	dobna_granica varchar(2) not null,
	spol char(1)	
);

create table poklon_kategorija(
	poklon int not null,
	kategorija int not null
);

alter table dijete add foreign key (roditelj) references roditelj(sifra);
alter table dijete add foreign key (poklon) references poklon(sifra);

alter table poklon_kategorija add foreign key (poklon) references poklon(sifra);
alter table poklon_kategorija add foreign key (kategorija) references kategorija(sifra);

