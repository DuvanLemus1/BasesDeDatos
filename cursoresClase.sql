--pasar parametros en un cursor

DECLARE
    vcPrimerNombre persona.primernombre%TYPE;
    vcPrimerApellido persona.segundoApellido%TYPE;
    vnIdPersona persona.idpersona%TYPE;

BEGIN

    FOR i IN 1..10 LOOP
        vnIdPersona:=NUMBERS.NEXTVAl;
        INSERT INTO PERSONA(IDPERSONA,PRIMERNOMBRE,SEGUNDONOMBRE,PRIMERAPELLIDO,SEGUNDOAPELLIDO,CORREO,DIRECCION)
        VALUES(vnIdPersona,'Nombre'||vnIdPersona,'S nombre'||vnIdPersona,'P apellido'||vnIdPersona,'S apellido'||vnIdpersona,'Correo'||vnIdPersona||
        'gmail@algo.com','direccion'||vnIdPersona);
    END LOOP;        

END;
---No tomar en cuenta


DECLARE
    vnIdPersona persona.idPersona%TYPE;
    vcNombre persona.primerNombre%TYPE;
    
BEGIN
    FOR curPersona in(SELECT idPersona, primerNombre FROM persona);
    DBMS_OUTPUT.PUT_LINE('El nombre es: '||curPersona.vcNombre);
    
END;


--EXCEPCIONES
SQLCODE= --retorna el codigo de error que se genero
SQLERRM= --Mensaje de error

DECLARE
BEGIN
    commit;
EXCEPTION
    rollback;
END;


