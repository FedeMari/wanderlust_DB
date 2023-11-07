alter session set "_oracle_script"=true;

DROP user TRAVELDB CASCADE;

CREATE user TRAVELDB IDENTIFIED BY admin;

alter session set current_schema = TRAVELDB;


GRANT CONNECT TO TRAVELDB;
GRANT CREATE TABLE TO TRAVELDB;
GRANT CREATE SEQUENCE TO TRAVELDB;
GRANT CREATE TRIGGER TO TRAVELDB;

ALTER USER TRAVELDB QUOTA UNLIMITED ON USERS;


--example
WITH a AS(SELECT '1' id,'pippo' nome,'pluto'cognome FROM dual union
          SELECT '2' id,'topolino' nome,'paperino'cognome FROM dual         UNION
          SELECT '3' id,'QUO' nome,'QUI'cognome FROM dual
 )--SELECT * FROM A
SELECT A.NOME, 
       A.COGNOME, 
       LEAD (A.COGNOME) OVER(ORDER BY A.COGNOME) COGNOME_NEXT
  FROM A;

--Exercise 1:
WITH a AS(SELECT *
            FROM POSTS p
 )
 SELECT a.data,
        a.titolo,
        
  LEAD (a.data, 2) OVER(ORDER BY a.data) TITOLO_NEXT
  FROM a;

--Exercise 1:
WITH C AS( SELECT p.contenuto
              FROM POSTS p
 )SELECT *
   FROM c
   WHERE INSTR(c.contenuto, 'Roma', 1, 2) >0;
 
 --SUBSTR(c.contenuto, 1, 3) "SUBSTR"
 --  FROM c
 
 
SELECT *
 FROM UTENTI u, POSTS p
 WHERE u.id_utente(+) = p.utente_id;
 
INSERT INTO UTENTI (cognome, email, nome, password) VALUES ('Arancione', 'valearancione@gmail.com', 'Valeriano', 'abcd');
  
INSERT INTO POSTS (data, titolo, contenuto) VALUES ('16-SET-23', 'Oslo', 'Sono andato ad Oslo e fa freddo');


CREATE OR REPLACE FUNCTION F_EXISTS_WRITER(IN_WRITER NUMBER) RETURN VARCHAR2
IS
    V_NUMBER_WRITERS VARCHAR2(50);
BEGIN
    SELECT p.titolo INTO V_NUMBER_WRITERS
      FROM POSTS p
      WHERE p.utente_id = IN_WRITER;
      RETURN V_NUMBER_WRITERS;
EXCEPTION
    WHEN NO_DATA_FOUND THEN RETURN 'No Data Found'; 
    WHEN OTHERS THEN RETURN 'Other Errors'; --QUALSIASI ALTRO ERRORE
END F_EXISTS_WRITER;

SELECT F_EXISTS_WRITER(1) TITOLO FROM DUAL;
SELECT F_EXISTS_WRITER(2) TITOLO FROM DUAL;
SELECT F_EXISTS_WRITER(102) TITOLO FROM DUAL;


CREATE OR REPLACE PROCEDURE P_EXISTS_WRITER(IN_WRITER NUMBER, P_OUTPUT OUT VARCHAR2)
IS
    V_NUMBER_WRITERS VARCHAR2(50);
BEGIN
    SELECT p.titolo INTO V_NUMBER_WRITERS
      FROM POSTS p
      WHERE p.utente_id = IN_WRITER;
      P_OUTPUT := V_NUMBER_WRITERS;
EXCEPTION
    WHEN NO_DATA_FOUND THEN P_OUTPUT := 'No Data Output';
    WHEN OTHERS THEN P_OUTPUT := 'Others';
END P_EXISTS_WRITER;


DECLARE
  IN_WRITER NUMBER;
  P_OUTPUT VARCHAR2(200);
BEGIN
  IN_WRITER := 2; --CAMBIO INPUT
  P_OUTPUT := 'PIPPO'; --CAMBIO INPUT


  TRAVELDB.P_EXISTS_WRITER(
    IN_WRITER => IN_WRITER,
    P_OUTPUT => P_OUTPUT
  );
  
  --:P_OUTPUT := P_OUTPUT; SE NON COMMENTI PRENDE NULL 
  
  DBMS_OUTPUT.PUT_LINE('P_OUTPUT: ' || P_OUTPUT); --CONSOLE.LOG
--rollback; 
END;


CREATE OR REPLACE EDITIONABLE PROCEDURE P_SELECT_POST 
IS

CURSOR cur IS

 SELECT u.id_utente, u.email
  FROM UTENTI u
  WHERE u.id_utente IN (1,2);

TYPE P_UTENTE IS TABLE OF UTENTI%ROWTYPE;

BEGIN

 OPEN cur;
  LOOP
    FETCH cur --passa al dato successivo
    BULK COLLECT INTO P_UTENTE;
    EXIT WHEN P_UTENTE.COUNT = 0;

    --FOR PERMETTE MODIFICHE, FORALL NO
    FORALL I IN P_UTENTE.FIRST..P_UTENTE.LAST SAVE EXCEPTIONS
	SELECT * 
	 FROM POSTS p
	 WHERE p.utente_id = P_UTENTE.id_utente;

    EXIT WHEN cur%NOTFOUND;

  END LOOP;

 CLOSE cur; 

END;



SELECT u.id_utente
  FROM UTENTI u
  WHERE u.id_utente IN (1,2);


SELECT COUNT(0)
     FROM POSTS p
     WHERE p.utente_id = 2;




create or replace EDITIONABLE PROCEDURE P_SELECT_POST_NUOVO 
IS
 BEGIN
 
 FOR i IN ( SELECT *
             FROM UTENTI u
             WHERE u.id_utente IN (1,2)
 )
 LOOP
    DBMS_OUTPUT.PUT_LINE(i.nome || I.EMAIL);
 END LOOP;
 

 END;
END;


SELECT *
 FROM POSTS; 


CREATE OR REPLACE PROCEDURE P_USING_TEST (S_ID_UTENTE NUMBER, S_NOME VARCHAR2)
--DECLARE
IS
 S_SQL VARCHAR2(500);
 --S_ID_UTENTE NUMBER:= 1;
 --S_NOME VARCHAR2(50):= 'MARIO';
 S_PIPPO VARCHAR2(50);
 S_EMAIL VARCHAR2(200);
BEGIN
 -- SEGNAPOSTO :1 :2 QUINDI :1 USA LA PRIMA VARIABILE, :2 USA LA SECONDA VARIABILE
 S_SQL:= 'SELECT COGNOME,EMAIL FROM UTENTI WHERE ID_UTENTE = :1 AND UPPER(NOME) = :2';
 EXECUTE IMMEDIATE S_SQL INTO S_PIPPO,S_EMAIL USING S_ID_UTENTE, S_NOME; --NON VUOLE LE PARENTESI
 DBMS_OUTPUT.PUT_LINE('NOME: ' || S_PIPPO || 'EMAIL: ' || S_EMAIL);
 
END;


-- partizione ci permette di indicare che ad ogni cambiamento del campo specificato riparte il numero del conteggio delle righe
-- ROW_NUMBER() metodo predefinito necessita OVER  a seguito
SELECT ROW_NUMBER() OVER (PARTITION BY p.utente_id ORDER BY p.utente_id, p.data) ROW_NUM, p.*
 FROM POSTS p;
 
SELECT COUNT(0), p.utente_id, u.nome
 FROM POSTS p, UTENTI u
 WHERE p.utente_id = u.id_utente(+) --left se a dx, right se a sx
 GROUP BY (p.utente_id, u.nome);


SELECT *
 FROM POSTS p
 WHERE p.utente_id IN (SELECT u.id_utente
                        FROM UTENTI u
                        WHERE u.id_utente = 2) AND p.titolo LIKE 'Vene%';
                        


DECLARE 
 PIPPO VARCHAR2(20):= 'CIAO';
 VR_PIPPO VARCHAR2(10);
BEGIN
 SELECT LPAD(PIPPO, 8, '0') INTO VR_PIPPO --aggiungi 8 volte 0 a sinistra, ma conta a partire dalla posizione 0 quindi già occupata da "ciao"
                                          -- partendo da li metterà effettivamente solo 4 volte 0
 FROM DUAL;
 DBMS_OUTPUT.PUT_LINE(VR_PIPPO);
END;



DECLARE

 V_TITOLO VARCHAR2(50);
 
 CURSOR cur IS 
 SELECT p.titolo
 FROM POSTS p
 WHERE EXISTS (SELECT 'kkkkk' 
                FROM UTENTI u
                WHERE u.id_utente = p.utente_id) 
                AND p.titolo LIKE 'Vene%';

BEGIN
 OPEN cur;
 LOOP
  FETCH cur INTO V_TITOLO; 
  EXIT WHEN cur%notfound;
  DBMS_OUTPUT.PUT_LINE(V_TITOLO);
 END LOOP;

END;


SELECT F_SPLIT('SMITH,ALLEN,WARD,JONES') FROM DUAL;


select * from table(F_SPLIT('SMITH , ALLEN , WARD , JONES'));
SELECT * from table(F_SPLIT('SMITH,ALLEN,WARD,JONES')); 


select
      regexp_substr('ROMA,ATENE,VENEZIA','[^,]+', 1, level) from dual --split
      connect by
       regexp_substr('ROMA,ATENE,VENEZIA','[^,]+', 1, level) is not null;



























  