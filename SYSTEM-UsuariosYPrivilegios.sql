--Inicio de Clase en Oracle, creacion de usuarios y administracion de privilegios

create user bd_ejemplo identified by 123
                default tablespace users
                quota unlimited on users;
                
create user bd2 identified by admin123
                default tablespace users
                quota unlimited on users;
                
CREATE USER bd3 IDENTIFIED BY admin123
                DEFAULT TABLESPACE users
                QUOTA UNLIMITED ON users;
                
alter session set "_ORACLE_SCRIPT" = true; --Script para modificar el permiso del usuario SYSTEM para crear nuevos usuarios

create role rol_bd;

GRANT CREATE SESSION,          --Permite iniciar sesion
      CREATE ANY TABLE,        --Permite crear cualquier cantidad de tablas
      CREATE ANY VIEW,         --Permite crear cualquier cantidad de vistas
      CREATE ANY PROCEDURE,    --Permite crear cualquier cantidad de procedimientos
      ALTER ANY TABLE,         --Permite modificar cualquier cantidad de tablas
      ALTER ANY PROCEDURE,     --Permite modificar cualquier cantidad de procedimientos
      DROP ANY TABLE,          --Permite eliminar cualquier cantidad de tablas
      DROP ANY VIEW,           --Permite eliminar cualquier cantidad de vistas
      DROP ANY PROCEDURE       --Permite eliminar cualquier cantidad de procedimientos
      TO rol_bd;               --Asigna estos privilegios al rol
      
GRANT rol_bd to bd_ejemplo;            --Asigna este rol al usuario


--GRANT ALL PRIVILEGES TO nombreusuario -- Concede todos los privilegios posibles a un rol


SELECT * FROM DBA_ROLES; --Consulta todos los roles existentes

SELECT * FROM DBA_SYS_PRIVS WHERE GRANTEE='rol_bd' --CONSULTA PARA TODOS LOS PRIVILEGIOS A UN ROL

REM INSERTING into BRANDS --Equivalente a un comentario



















