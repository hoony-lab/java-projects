CREATE TABLE Board
(
    no           INT              NOT NULL, 
    id           VARCHAR2(20)     NOT NULL, 
    title        VARCHAR2(100)    NULL, 
    content      CLOB             NULL, 
    writeDate    DATE             NULL, 
    CONSTRAINT BOARD_PK PRIMARY KEY (no)
)

INSERT INTO board values(2, 123, 22, 22, sysdate)

INSERT INTO board values(3, 123, 33, 33, sysdate)

INSERT INTO board values(4, 123, 44, 44, sysdate)

SELECT * FROM board

SELECT * FROM member