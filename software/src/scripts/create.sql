create database starband;

-- set permisions here

create table stars(
starid int not null auto_increment primary key,
visiblemagnitude double not null,
propername varchar(255) not null,
simbad varchar(255) not null,
wikilink text not null
);

create table users(
userid int not null auto_increment primary key,
username text not null,
password text not null,
displayname text not null,
email text not null,
zipcode text not null,
verificationcode text not null,
verified bool not null
);

create table userbracelets(
userbracelets int not null auto_increment primary key,
userid int not null,
foreign key (userid) references users(userid),
braceletid int not null,
foreign key (braceletid) references bracelets(braceletid),
);

create table bracelets(
braceletid int not null auto_increment primary key,
braceletname text not null
);

create table assignments(
assignmentid int not null auto_increment primary key,
braceletid int not null,
foreign key (braceletid) references bracelets(braceletid),
starid int not null,
foreign key (starid) references stars(starid)
);