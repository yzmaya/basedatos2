CREATE TABLE PAISES (ID_PAIS VARCHAR(4),
                       NOMBRE VARCHAR2(120), 
                        HABITANTE INTEGER, 
                          IDIOMA VARCHAR2(40),
   CONSTRAINT PK_ID_PAIS PRIMARY KEY(ID_PAIS)); 

INSERT INTO PAISES VALUES('MX','México',9000000,'español');
INSERT INTO PAISES VALUES('eua','Estadps unidos',12000000,'inglés');
INSERT INTO PAISES VALUES('jpa','japon',800000,'japones');
INSERT INTO PAISES VALUES('ger','Alemania',70000,'aleman');
INSERT INTO PAISES VALUES('bra','Brazil',48884844,'Portugues');


CREATE TABLE ESTUDIANTE (ID_ESTUDIANTE INTEGER,
                       ID_PAIS VARCHAR2(4), 
                        CARRERA VARCHAR2(30), 
                          EDAD INTEGER,
   CONSTRAINT PK_ID_ESTUDIANTE PRIMARY KEY(ID_ESTUDIANTE),
   CONSTRAINT FK1_ID_PAIS FOREIGN KEY (ID_PAIS)
    REFERENCES PAISES(ID_PAIS));

 INSERT INTO ESTUDIANTE VALUES(1,'MX','SISTEMAS',26);
    INSERT INTO ESTUDIANTE VALUES(2,'eua','TI',26);
    INSERT INTO ESTUDIANTE VALUES(3,'jpa','DISEÑO',26);
    INSERT INTO ESTUDIANTE VALUES(4,'ger','CINE',26);
    INSERT INTO ESTUDIANTE VALUES(5,'bra','GASTRONOMIA',26);
    INSERT INTO ESTUDIANTE VALUES(6,'MX','MUSICO',26);
    INSERT INTO ESTUDIANTE VALUES(7,'MX','TEATRO',26);


SELECT * FROM ESTUDIANTE;


DECLARE 
 CURSOR CUR_PAISES IS SELECT NOMBRE, HABITANTE FROM PAISES;
    CURSOR CUR_ESTUDIANTE IS SELECT CARRERA FROM ESTUDIANTE;

    BEGIN
   
       FOR FILA IN CUR_PAISES LOOP
   
        DBMS_OUTPUT.PUT_LINE('NOMBRE '||FILA.NOMBRE|| ' HABITANTES  ' || FILA.HABITANTE);
         
         END LOOP;
         
          FOR FILA IN CUR_ESTUDIANTE LOOP
   
        DBMS_OUTPUT.PUT_LINE('CARRERA '||FILA.CARRERA);
         
         END LOOP;
 END;
