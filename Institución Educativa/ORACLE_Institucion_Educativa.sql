--Inicio de Clase en Oracle, creacion de usuarios y administracion de privilegios
CREATE TABLE asignatura (
  idAsignatura NUMBER NOT NULL,
  nombre VARCHAR2(45) NOT NULL,
  creditoAcademico NUMBER DEFAULT NULL
) ;

CREATE TABLE aula (
  idAula NUMBER NOT NULL,
  numeroAula VARCHAR2(45) NOT NULL,
  idEdificio NUMBER NOT NULL,
  capacidadMaxima NUMBER NOT NULL
) ;


CREATE TABLE carrera (
  idCarrera NUMBER NOT NULL,
  descripcion VARCHAR2(45) DEFAULT NULL
) ;

CREATE TABLE edificio (
  idEdificio NUMBER NOT NULL,
  nombre VARCHAR2(45) NOT NULL
) ;


CREATE TABLE estadocalificacion (
  idEstadoCalificacion NUMBER NOT NULL,
  estado VARCHAR2(45) 
) ;



CREATE TABLE estudiante (
  numeroCuenta NUMBER NOT NULL,
  fechaIngreso VARCHAR2(45) NOT NULL,
  idPersona VARCHAR2(11) NOT NULL
) ;



CREATE TABLE matricula (
  idMatricula NUMBER NOT NULL,
  numeroCuenta NUMBER NOT NULL,
  idSeccion NUMBER NOT NULL,
  nota float DEFAULT NULL,
  idEstadoCalificacion NUMBER DEFAULT NULL,
  idObservacionNota NUMBER DEFAULT NULL,
  fechaMatricula date NOT NULL
) ;


CREATE TABLE observacionnota (
  idObservacionNota NUMBER NOT NULL,
  descripcion VARCHAR2(45) DEFAULT NULL
) ;


CREATE TABLE periodo (
  idPeriodo NUMBER NOT NULL,
  descripcion VARCHAR2(45) DEFAULT NULL,
  fechaInicio date DEFAULT NULL,
  fechaFin date DEFAULT NULL
) ;



CREATE TABLE persona (
  idPersona VARCHAR2(11) NOT NULL,
  primerNombre VARCHAR2(45) NOT NULL,
  segundoNombre VARCHAR2(45) DEFAULT NULL,
  primerApellido VARCHAR2(45) NOT NULL,
  segundoApellido VARCHAR2(45) DEFAULT NULL,
  correo VARCHAR2(45) NOT NULL,
  direccion VARCHAR2(45) DEFAULT NULL
) ;



CREATE TABLE planestudio (
  idPlanEstudio NUMBER NOT NULL,
  fechaPublicacion VARCHAR2(45) DEFAULT NULL,
  idCarrera NUMBER NOT NULL
) ;



CREATE TABLE planestudioasignatura (
  idPlanEstudioAsignatura NUMBER NOT NULL,
  idAsignatura NUMBER NOT NULL,
  idPlanEstudio NUMBER NOT NULL
) ;



CREATE TABLE profesor (
  idProfesor NUMBER NOT NULL,
  fechaIngreso date NOT NULL,
  idPersona VARCHAR2(11) NOT NULL,
  cantidadMaximaClases NUMBER NOT NULL
) ;



CREATE TABLE requisito (
  idAsignatura NUMBER NOT NULL,
  idRequisito NUMBER NOT NULL,
  idPlanEstudio NUMBER NOT NULL
) ;



CREATE TABLE seccion (
  idSeccion NUMBER NOT NULL,
  idProfesor NUMBER NOT NULL,
  idPeriodo NUMBER NOT NULL,
  idAula NUMBER NOT NULL,
  idAsignatura NUMBER NOT NULL,
  horaInicio NUMBER NOT NULL,
  horaFin NUMBER NOT NULL,
  cuposMaximo NUMBER NOT NULL
) ;



CREATE TABLE telefono (
  idTelefono NUMBER NOT NULL,
  numeroTelefono VARCHAR2(45) DEFAULT NULL,
  idPersona VARCHAR2(11) NOT NULL
) ;

ALTER TABLE asignatura
  ADD PRIMARY KEY (idAsignatura);

--
-- Indices de la tabla aula
--
ALTER TABLE aula
  ADD PRIMARY KEY (idAula);

--
-- Indices de la tabla carrera
--
ALTER TABLE carrera
  ADD PRIMARY KEY (idCarrera);

--
-- Indices de la tabla edificio
--
ALTER TABLE edificio
  ADD PRIMARY KEY (idEdificio);

--
-- Indices de la tabla estadocalificacion
--
ALTER TABLE estadocalificacion
  ADD PRIMARY KEY (idEstadoCalificacion);

--
-- Indices de la tabla estudiante
--
ALTER TABLE estudiante
  ADD PRIMARY KEY (numeroCuenta);

--
-- Indices de la tabla matricula
--
ALTER TABLE matricula
  ADD PRIMARY KEY (idMatricula);

--
-- Indices de la tabla observacionnota
--
ALTER TABLE observacionnota
  ADD PRIMARY KEY (idObservacionNota);

--
-- Indices de la tabla periodo
--
ALTER TABLE periodo
  ADD PRIMARY KEY (idPeriodo);

--
-- Indices de la tabla persona
--
ALTER TABLE persona
  ADD PRIMARY KEY (idPersona);

--
-- Indices de la tabla planestudio
--
ALTER TABLE planestudio
  ADD PRIMARY KEY (idPlanEstudio);

--
-- Indices de la tabla planestudioasignatura
--
ALTER TABLE planestudioasignatura
  ADD PRIMARY KEY (idPlanEstudioAsignatura);

--
-- Indices de la tabla profesor
--
ALTER TABLE profesor
  ADD PRIMARY KEY (idProfesor);

ALTER TABLE seccion
  ADD PRIMARY KEY (idSeccion);

--
-- Indices de la tabla telefono
--
ALTER TABLE telefono
  ADD PRIMARY KEY (idTelefono);
