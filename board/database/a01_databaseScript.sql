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


