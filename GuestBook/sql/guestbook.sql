DROP TABLE GUEST_BOOK;

CREATE TABLE GUEST_BOOK
(
	num			number			primary key,
	name		varchar2(20) 	not null,
	password 	varchar2(20)	not null,
	content		varchar2(2000)	not null,
	inputdate	date default	sysdate
);

CREATE SEQUENCE GUEST_BOOK_SEQ;

COMMIT

SELECT * FROM WEB_MEMBER;