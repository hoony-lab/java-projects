CREATE TABLE Hit
(
    no       INT    NOT NULL, 
    maxNo    INT    NULL, 
    CONSTRAINT HIT_PK PRIMARY KEY (no)
)
/

ALTER TABLE Hit
    ADD CONSTRAINT FK_Hit_no_Board_no FOREIGN KEY (no)
        REFERENCES Board (no)
        
        
        
        
ALTER TABLE Board
    ADD CONSTRAINT FK_Board_id_Member_id FOREIGN KEY (id)
   		REFERENCES Member (id)
   		
   		
SELECT * FROM BOARD

INSERT INTO hit values(8, 2)

SELECT * FROM hit