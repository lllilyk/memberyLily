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
SELECT memberId, 'host' 
FROM Host 
WHERE memberId IS NOT NULL;

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

SELECT * FROM HostHousePhoto;
desc Member;

ALTER TABLE Member MODIFY COLUMN id VARCHAR(100);

SELECT * FROM Member ORDER BY inserted desc;

-- 이미 한번이라도 로그인이되었다면??
DESC Member;
DELETE FROM Member WHERE name="lily k";
DELETE FROM Member WHERE nickName LIKE "%김유민%";
USE membery;



ALTER TABLE Member MODIFY COLUMN phoneNumber VARCHAR(100) NULL;
ALTER TABLE Member DROP INDEX phoneNumber;
ALTER TABLE Member DROP INDEX email;

DELETE FROM QnA WHERE title LIKE "%펫시터%";
DELETE FROM QnA WHERE title LIKE "추천%";
DELETE FROM QnA WHERE writer IS NULL;
CREATE TABLE QnA (
	id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    body VARCHAR(1000) NOT NULL,
    writer VARCHAR(20),
    inserted DATETIME DEFAULT NOW()
);

USE membery;
INSERT INTO QnA (title, body, writer)
VALUES ('반려동물을 추가하면 비용이 어떻게 되나요?', '맡기시는 반려동물이 2마리 이상일 경우 2번째 반려동물부터 할인된 비용이 적용될 수 있습니다. 각 펫시터님들마다 0~20000원 사이의 할인 금액이 있을 수 있으니 유의바랍니다.', 'ppyongheon');

SELECT * FROM QnA ORDER BY id DESC;
DELETE FROM QnA WHERE writer LIKE "0%";

SELECT * FROM QnAComment;
DELETE FROM QnAComment WHERE memberId = "star";

DESC Member;
DESC QnA;
SELECT * FROM QnAComment ORDER BY inserted DESC;
---------------------------------------------------------------------------
CREATE TABLE QnAComment (
	id INT PRIMARY KEY AUTO_INCREMENT,
    qnaId INT NOT NULL,
    content VARCHAR(500) NOT NULL,
    memberId VARCHAR(100) NOT NULL,
    inserted DATETIME NOT NULL DEFAULT NOW(),
    FOREIGN KEY (qnaId) REFERENCES QnA(id),
    FOREIGN KEY (memberId) REFERENCES Member(id)
);
----------------------------------------------------------------------------
INSERT INTO QnAComment (qnaId, content, memberId)
VALUES (295, '댓글 셋', 'membow');