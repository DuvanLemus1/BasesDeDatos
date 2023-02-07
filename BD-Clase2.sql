--BLOQUES ANONIMOS
DECLARE
    vnConteo     NUMBER:=1;   --v Variable n Numero 
    vnConteo2    NUMBER;
    vcNombre PERSONA.PRIMERNOMBRE%TYPE;
    vnSalario NUMBER;
    vnSalario2 NUMBER;
    vcTipoEmpleado VARCHAR2(2):='E1';
    
BEGIN
    vnConteo2:=2;
    dbms_output.put_line('Hola PL-SQL');
    
    IF vnConteo> vnConteo2 THEN
        dbms_output.put_line('vnCOnteo es mayor');
    ELSE
        dbms_output.put_line('vnCOnteo2 es mayor');
    END IF;
    
    CASE 
        WHEN vcTipoEmpleado = 'E1' THEN
            vnSalario:=1000;
        WHEN vcTipoEmpleado = 'E2' THEN
            vnSalario:=2000;
        WHEN vcTipoEmpleado = 'E3' THEN
            vnSalario:=3000;
    END CASE;
    
    dbms_output.put_line('Un empleado de tipo ' || vcTipoEmpleado|| ' tiene un salario de '||vnSalario);
    vnSalario2:=CASE
        WHEN vcTipoEmpleado='E1' THEN 1000
        WHEN vcTipoEmpleado='E2' THEN 1000
        WHEN vcTipoEmpleado='E1' THEN 1000
        ELSE 0
        END;
        
    FOR i IN 1..10 LOOP
        dbms_output.put_line('Iteracion No. '||i);
    END LOOP;
        
END;

SET SERVEROUTPUT ON; --Habilita la salida de datos estandar





