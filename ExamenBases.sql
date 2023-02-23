DECLARE
    --Variables de entrada
    vdFechaCita DATE:='01/feb/2023';
    vnIdPaciente int:=0;
    vnIdEspecialidad int:=0;
    vnIdCentroMedico int:=0;
    
    --Variables de salida
    vnCodigoMensaje int:=0;
    vcMensaje VARCHAR2(500):='';
    vnIdCita int:=0;
    
    
BEGIN
    DBMS_OUTPUT.PUT_LINE(vnIdPaciente);
    DBMS_OUTPUT.PUT_LINE(vdFechaCita);
END;