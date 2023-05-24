USE membery;

CREATE TABLE host(
    id int PRIMARY KEY AUTO_INCREMENT,
	hostName VARCHAR(10) NOT NULL,
    address VARCHAR(30) NOT NULL,
    phone VARCHAR(30) NOT NULL,
    inserted DATETIME DEFAULT NOW(),
    photo VARCHAR(300) NOT NULL
    );
    
DESC host;

CREATE TABLE detail (
	id int PRIMARY KEY AUTO_INCREMENT,
    short VARCHAR(300) NOT NULL,
    body VARCHAR(1000) NOT NULL,
    inserted DATETIME DEFAULT NOW()
);

CREATE TABLE bookDate (
	id int PRIMARY KEY AUTO_INCREMENT,
	checkIn DATE NOT NULL,
    checkOut DATE NOT NULL
);

DESC Member;
select * from Member;

