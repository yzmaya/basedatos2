  SET SERVEROUTPUT ON;
     
 --ESTE PROCEDIMIENTO ES DE ENTRADA    Y SE UTILIZA LA PALABRA RESERVADA IN
     CREATE OR REPLACE PROCEDURE HOLA_MUNDO(NOMBRE IN VARCHAR2)
     AS 
     -- AQUI SE PONDRIAN LAS VARIABLES LOCALES
     BEGIN
     -- AQUI VA LA LOGICA DE PROGRAMACION
     
     DBMS_OUTPUT.PUT_LINE('HOLA COMO ESTAS ' || NOMBRE);
     
     END;
     /
     
     BEGIN
       HOLA_MUNDO('NESTOR YZMAYA');
     END;
     /
     
     
     DECLARE 
     VALOR NUMBER;
     BEGIN
     SUMA(18,7,VALOR);
     DBMS_OUTPUT.PUT_LINE('LA SUMA ES ' || VALOR);
     END;
     /
     
     DECLARE
     VALOR NUMBER;
     BEGIN
     GUARDAR_PELICULA(VALOR,'FRANK ZAPPA','TRATA SOBRE LA VIDA DEL MULTI INSTRUMENTISTA QUE NO TENIA NINGUN TIPO DE RELIGION Y APORTO UN SONIDO PECULIAR EN EL ROCK','C');
     END;
     /
     
     DESCRIBE PELICULA;
