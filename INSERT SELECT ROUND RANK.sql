select e.pnombre, d.nombre,
    ROUND((SYSDATE-TRUNC(e.FECHANACIMIENTO))/365) EDAD
    from empleado e
    INNER JOIN DEPARTAMENTO d ON e.IDDEPARTAMENTO=d.IDDEPARTAMENTO;
    
    

--INSERT SELECT

select e.pnombre, ce1.fechaNombramiento, c.nombre cargo
    from empleado e
    inner join cargo_empleado ce1 on ce1.idempleado = e.idempleado
    inner join cargo c ON c.idcargo=ce1.idcargo
    where c.idcargo=1;
    
    --para los empleados que tengan el cargo de instructir sera el bono 1
    --para el resto sera el bono 2
    
    --UNION elimina valores o registros repetidos
    
    --UNION ALL no previene registros repetidos
    
    --SECUENCIAS
    
    