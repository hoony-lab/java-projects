ALTER TABLE board
RENAME COLUMN content TO contents


SELECT * FROM board


ALTER TABLE HIT 
RENAME TO HITS

SELECT * FROM hits

CREATE TABLE emp
(
ename varchar2(20),
empno int,
mgr int,
job varchar2(20)
)

INSERT INTO emp
--VALUES('king', 7839, null, 'president')
--VALUES('JONES', 7566, 7839, 'MANAGER')
--VALUES('SCOTT', 7788, 7566, 'ANALYST')
--VALUES('ADAMS', 7876, 7788, 'CLERK')
--VALUES('FORD', 7902, 7566, 'ANALYST')
--VALUES('SMITH', 7369, 7902, 'CLERK')
--VALUES('BLAKE', 7698, 7839, 'MANAGER')

SELECT * FROM emp


SELECT empno, ename, mgr
FROM emp
START WITH job = 'president'
CONNECT BY PRIOR empno = mgr;

SELECT LEVEL, empno, ename, mgr
FROM emp
START WITH job = 'president'
CONNECT BY PRIOR empno = mgr;



SELECT LEVEL, LPAD(' ', 4*(LEVEL-1)) || ename ename, empno, mgr,
job
FROM emp
START WITH job='president'
CONNECT BY PRIOR empno=mgr;


DROP TABLE reply;
CREATE TABLE Reply
(
    no          INT     NOT NULL, 
    pno         INT     NULL, 
    depth       INT     NULL, 
    contents    CLOB    NULL, 
    CONSTRAINT REPLY_PK PRIMARY KEY (no)
)

ALTER TABLE Reply
    ADD CONSTRAINT FK_Reply_pno_Board_no FOREIGN KEY (pno)
        REFERENCES Board (no)
/

ALTER TABLE Reply
    ADD CONSTRAINT FK_Reply_id_Member_id FOREIGN KEY (id)
        REFERENCES Member (id)
/




Alter table Reply drop constraint FK_Reply_pno_Board_no;

Alter table Reply
ADD constraint FK_Reply_pno_Board_no
foreign key (pno)
references Board (no)
on delete cascade;



--INSERT INTO REPLY (NO, PNO, DEPTH, CONTENTS)
INSERT INTO REPLY(
SELECT max(no) AS NO FROM BOARD, ?, DEPTH, CONTENTS)
VALUES(
(
	SELECT NO
	FROM(
		SELECT nvl(NO, 0) AS NO
		FROM BOARD
	)
)

)


SELECT NVL(DEPTH, 0)+1 
FROM REPLY 
WHERE NO = ?




INSERT INTO reply(no, pno, depth) 
VALUES( 
( 
SELECT no 
FROM( 
SELECT nvl(no, 0) as no 
FROM board 
ORDER BY no desc 
) 
WHERE rownum<=1 
) 
, ?, ( 
SELECT nvl(depth, 0) 
FROM reply 
WHERE no=?)+1 
)
