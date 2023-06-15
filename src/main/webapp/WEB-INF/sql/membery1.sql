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

SELECT * FROM Member;

DESC Member; 
alter table Member drop inserted;
alter table Member change id id VARCHAR(12);
alter table Member add inserted DATETIME DEFAULT NOW();
use membery;
select * from Member;
DELETE FROM Member WHERE password="asdf asf";

use membery;
select * from Member;
DESC Member;

SELECT * FROM Host;

SELECT * FROM Book;

ALTER TABLE Feed
ADD FOREIGN KEY (writer) REFERENCES Member(id);

SELECT * FROM Member;

DESC Member;

-- 권한 테이블
CREATE TABLE MemberAuthority(
	memberId VARCHAR(20) NOT NULL,
    authority VARCHAR(30) NOT NULL,
    FOREIGN KEY (memberId) REFERENCES Member(id),
    PRIMARY KEY (memberId, authority)
);

DESC Host;

INSERT INTO MemberAuthority 
VALUES ('membow', 'admin');

-----------------------------------
INSERT INTO MemberAuthority (memberId, authority)
SELECT 'host'
FROM Host h
WHERE (SELECT Host.id host FROM Member LEFT JOIN Host ON Member.id = Host.memberId);
-----------------------------------

SELECT * FROM Member;
SELECT * FROM Host;
SELECT * FROM MemberAuthority;

-- membow	admin
INSERT INTO MemberAuthority (memberId, authority) 
SELECT memberId, 'host' FROM Host WHERE memberId IS NOT NULL;

SELECT * 
FROM Member m LEFT JOIN MemberAuthority ma ON m.id = ma.memberId
WHERE m.id = 'membow';

SELECT * 
FROM Member JOIN Host ON Member.id = Host.memberId;

SELECT * FROM Pet;
SELECT * FROM Member;

SELECT m.*, ma.authority, h. CONCAT('/', p.id, '/', p.photo) profileImage
			FROM Member m LEFT JOIN Pet p ON m.defaultPetId = p.id
						  LEFT JOIN MemberAuthority ma ON m.id = ma.memberId
                          LEFT JOIN Host h ON m.id = h.memberId
			WHERE m.id = 'abc';
DESC Member;

SELECT * FROM MemberAuthority;
DESC MemberAuthority;

CREATE TABLE Test(
	memberId VARCHAR(30),
    authority VARCHAR(30)
);

INSERT INTO Test (authority)
SELECT 'host'
FROM Host h
WHERE (SELECT Host.id host FROM Member LEFT JOIN Host ON Member.id = Host.memberId);
