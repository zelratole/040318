-- 기본 테이블
create table board(
	no number(5) primary key,
	refno number(5),
	subject varchar2(100),
	content varchar2(1000),
	writer varchar2(50),
	readcnt number(3),
	regdte date,
	uptdte date
);
create sequence board_seq
	start with 1
	maxvalue 9999;
insert into board values(board_seq.nextval,0,'첫번째글',
	'내용','홍길동',0,sysdate,sysdate);
select * from board
where subject like '%%'
and writer like '%%';

create table boardfile(
	no number, -- board의 no를 foreign key로 처리..(생략)
	fname varchar2(100),
	etc varchar2(500),
	regdte date,
	uptdte date
);
INSERT INTO boardfile values(1,'문서.txt','',sysdate,sysdate);

SELECT * FROM board WHERE NO = 2;
select fname from boardfile WHERE NO = 3; 
update board
		set readcnt = readcnt + 1
where no = 2;

