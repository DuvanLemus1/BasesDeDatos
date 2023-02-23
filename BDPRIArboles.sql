DECLARE

BEGIN

END;


SELECT pnombre, papellido,level,
    CONNECT_BY_ISLEAF IsLeaf,
    SYS_CONNECT_BY_PATH(pnombre, '/') Path
FROM empleado
    START WITH idempleadojefe is NULL
    CONNECT BY PRIOR idEmpleado = idempleadojefe;


    --SUBCONSULTA EN EL SELECT, LEFT O RIGHT o consultas jerarquicas, UNION ALL

    
    