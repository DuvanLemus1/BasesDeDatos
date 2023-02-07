--CICLOS EN ORACLE
DECLARE 
    ITERACION NUMBER(3):=0; --Acepta como maximo 3 digitos
    FECHA DATE:=SYSDATE; --Obtener la fecha del sistema, SYSDATE +1 aumenta la fecha en un dia
BEGIN 
    --CICLO LOOP SE EJECUTA AL MENOS UNA VEZ
    
    LOOP 
        
        EXIT WHEN ITERACION>3;
        fecha:=sysdate+iteracion; --En la primera iteracion, iteracion vale 0
        DBMS_OUTPUT.put_line('Iteracion numero '|| ITERACION);
        DBMS_OUTPUT.put_line('FECHA '|| fecha);
        
        ITERACION:=ITERACION+1;
        
    END LOOP;
    
END;

SET SERVEROUTPUT ON; --ACTIVA la salida de datos estandar

--OTROS CICLOS EN ORACLE (WHILE)
DECLARE 
    ITERACION NUMBER(3):=0; --Acepta como maximo 3 digitos
    FECHA DATE:=SYSDATE; --Obtener la fecha del sistema, SYSDATE +1 aumenta la fecha en un dia
BEGIN 
    --CICLO WHILE LOOP revisa la condicion antes de ejecutarse
    
    WHILE (ITERACION<3) LOOP 
        
        fecha:=sysdate+iteracion; --En la primera iteracion, iteracion vale 0
        DBMS_OUTPUT.put_line('Iteracion numero '|| ITERACION);
        DBMS_OUTPUT.put_line('FECHA '|| fecha);
        
        ITERACION:=ITERACION+1;
        
    END LOOP;
    
END;

--OTROS CICLOS EN ORACLE (FOR)
DECLARE 
    ITERACION NUMBER(3); --Acepta como maximo 3 digitos y no necesita inicializarse
    FECHA DATE:=SYSDATE; --Obtener la fecha del sistema, SYSDATE +1 aumenta la fecha en un dia
BEGIN 
    --CICLO FOR revisa la condicion antes de ejecutarse
    
    FOR ITERACION in 0..5 LOOP --Aqui se inicializa el valor de la variable y vigila la condicion
        
        fecha:=sysdate+iteracion; --En la primera iteracion, iteracion vale 0
        DBMS_OUTPUT.put_line('Iteracion numero '|| ITERACION||' del FOR');
        DBMS_OUTPUT.put_line('FECHA '|| fecha);
        
    END LOOP;
    
END;

--OTROS CICLOS EN ORACLE (FOR con inicializacion previa)
DECLARE
    vInicio NUMBER:=0;
    vFin    NUMBER:=5;
    ITERACION NUMBER(3); --Acepta como maximo 3 digitos y no necesita inicializarse, no necesita ser creada en este punto
    FECHA DATE:=SYSDATE; --Obtener la fecha del sistema, SYSDATE +1 aumenta la fecha en un dia
BEGIN 
    --CICLO FOR revisa la condicion antes de ejecutarse
    
    FOR ITERACION in vinicio..vfin LOOP --Aqui se pasa el valor de la variable y vigila la condicion, la variable ITERACIOn puede ser creada al declararse aqui        
        fecha:=sysdate+iteracion; --En la primera iteracion, iteracion vale 0
        DBMS_OUTPUT.put_line('Iteracion numero '|| ITERACION||' del FOR');
        DBMS_OUTPUT.put_line('FECHA '|| fecha);
        
    END LOOP;
    
END;


