
CREATE TABLE Empleado (
  idEmpleado NUMBER NOT NULL ,
  pnombre VARCHAR2(45) NOT NULL,
  snombre VARCHAR2(45) NULL,
  papellido VARCHAR2(45) NOT NULL,
  direccion VARCHAR2(45) NOT NULL,
  telefono VARCHAR2(45) NOT NULL,
  celular VARCHAR2(15) NULL,
  incrementoSueldo NUMBER NOT NULL,
  idEmpleadoJefe NUMBER NULL,
  PRIMARY KEY (idEmpleado),
    FOREIGN KEY (idEmpleadoJefe)
    REFERENCES Empleado (idEmpleado)
    )
;


-- -----------------------------------------------------
-- Table Cargo
-- -----------------------------------------------------
CREATE TABLE Cargo (
  idCargo NUMBER NOT NULL ,
  nombre VARCHAR2(45) NULL,
  sueldoBase NUMBER NULL,
  PRIMARY KEY (idCargo))
;


-- -----------------------------------------------------
-- Table Cargo_empleado
-- -----------------------------------------------------
CREATE TABLE Cargo_empleado (
  idCargo NUMBER NOT NULL,
  idEmpleado NUMBER NOT NULL,
  fechaNombramiento DATE NULL,
  PRIMARY KEY (idCargo, idEmpleado),
    FOREIGN KEY (idCargo)
    REFERENCES Cargo (idCargo)
    ,
    FOREIGN KEY (idEmpleado)
    REFERENCES Empleado (idEmpleado)
    )
;


-- -----------------------------------------------------
-- Table Bono
-- -----------------------------------------------------
CREATE TABLE Bono (
  idBono NUMBER NOT NULL,
  fecha DATE NULL,
  monto NUMBER NULL,
  descripcion VARCHAR2(45) NULL,
  PRIMARY KEY (idBono))
;


-- -----------------------------------------------------
-- Table Planilla
-- -----------------------------------------------------
CREATE TABLE Planilla (
  idPlanilla NUMBER NOT NULL,
  fechaEfectiva DATE NULL,
  fechaInicio DATE NULL,
  fechaFin DATE NULL,
  PRIMARY KEY (idPlanilla))
;


-- -----------------------------------------------------
-- Table Empleado_bono
-- -----------------------------------------------------
CREATE TABLE Empleado_bono (
  Empleado_idEmpleado NUMBER NOT NULL,
  Bono_idBono NUMBER NOT NULL,
  Estado VARCHAR2(1) NULL,
  Planilla_idPlanilla NUMBER NOT NULL,
  PRIMARY KEY (Empleado_idEmpleado, Bono_idBono),
  FOREIGN KEY (Empleado_idEmpleado)
    REFERENCES Empleado (idEmpleado)
    ,
  FOREIGN KEY (Bono_idBono)
    REFERENCES Bono (idBono)
    ,
  FOREIGN KEY (Planilla_idPlanilla)
    REFERENCES Planilla (idPlanilla)
    )
;


-- -----------------------------------------------------
-- Table Anticipo
-- -----------------------------------------------------
CREATE TABLE Anticipo (
  idAnticipo NUMBER NOT NULL,
  fecha DATE NULL,
  descripcion VARCHAR2(45) NULL,
  monto NUMBER NULL,
  idEmpleado NUMBER NOT NULL,
  Estado VARCHAR2(1) NULL,
  Planilla_idPlanilla NUMBER NULL,
  PRIMARY KEY (idAnticipo),
  FOREIGN KEY (idEmpleado)
    REFERENCES Empleado (idEmpleado)
    ,
  FOREIGN KEY (Planilla_idPlanilla)
    REFERENCES Planilla (idPlanilla)
    )
;


-- -----------------------------------------------------
-- Table TipoDeduccion
-- -----------------------------------------------------
CREATE TABLE TipoDeduccion (
  idTipoDeduccion NUMBER NOT NULL,
  descripcion VARCHAR2(45) NULL,
  PRIMARY KEY (idTipoDeduccion))
;


-- -----------------------------------------------------
-- Table Deduccion
-- -----------------------------------------------------
CREATE TABLE Deduccion (
  idDeduccion NUMBER NOT NULL,
  fechaInicio DATE NULL,
  fechaFin DATE NULL,
  valor NUMBER NULL,
  TipoDeduccion_idTipoDeduccion NUMBER NOT NULL,
  tipo VARCHAR2(1) NULL  ,
  PRIMARY KEY (idDeduccion),
   FOREIGN KEY (TipoDeduccion_idTipoDeduccion)
    REFERENCES TipoDeduccion (idTipoDeduccion)
    )
;


-- -----------------------------------------------------
-- Table Deduccion_has_Empleado
-- -----------------------------------------------------
CREATE TABLE Deduccion_has_Empleado (
  Deduccion_idDeduccion NUMBER NOT NULL,
  Empleado_idEmpleado NUMBER NOT NULL,
  Fecha DATE NULL,
  Estado VARCHAR2(1) NULL,
  Planilla_idPlanilla NUMBER NULL,
  Deduccion_has_Empleadocol VARCHAR2(45) NULL,
  PRIMARY KEY (Deduccion_idDeduccion, Empleado_idEmpleado),
   FOREIGN KEY (Deduccion_idDeduccion)
    REFERENCES Deduccion (idDeduccion)
    ,
   FOREIGN KEY (Empleado_idEmpleado)
    REFERENCES Empleado (idEmpleado)
    ,
   FOREIGN KEY (Planilla_idPlanilla)
    REFERENCES Planilla (idPlanilla)
    )
;


-- -----------------------------------------------------
-- Table Empleado_has_Planilla
-- -----------------------------------------------------
CREATE TABLE Empleado_has_Planilla (
  Empleado_idEmpleado NUMBER NOT NULL,
  Planilla_idPlanilla NUMBER NOT NULL,
  PRIMARY KEY (Empleado_idEmpleado, Planilla_idPlanilla),
   FOREIGN KEY (Empleado_idEmpleado)
    REFERENCES Empleado (idEmpleado)
    ,
   FOREIGN KEY (Planilla_idPlanilla)
    REFERENCES Planilla (idPlanilla)
    )
;

