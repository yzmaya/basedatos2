CREATE TABLE SIMPLE1 (ID_SIMPLE INTEGER,
EDAD INTEGER,
NOMBRE VARCHAR2(120));

DECLARE
mi_edad integer;
BEGIN
mi_edad:=26;
FOR i IN 1..20 LOOP
 mi_edad:= mi_edad+i;
  INSERT INTO SIMPLE1 VALUES(i,mi_edad,'Nestor Ivan');
  END LOOP;
  END;
  /
  
  SET SERVEROUTPUT ON;
  
  UPDATE SIMPLE1 SET NOMBRE = 'XXX' WHERE EDAD=27;

  
  DECLARE
    MI_NOMBRE VARCHAR2(40);
  BEGIN
   SELECT NOMBRE INTO MI_NOMBRE FROM SIMPLE1 WHERE EDAD=29;
    DBMS_OUTPUT.PUT_LINE(MI_NOMBRE); 
  
  END;
  /
  
  
  SELECT * FROM SIMPLE1;


