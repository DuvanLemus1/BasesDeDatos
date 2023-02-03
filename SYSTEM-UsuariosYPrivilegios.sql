--Inicio de Clase en Oracle, creacion de usuarios y administracion de privilegios

create user bd identified by 123
                default tablespace users
                quota unlimited on users;
                
create user bd2 identified by admin123
                default tablespace users
                quota unlimited on users;
                
CREATE USER bd3 IDENTIFIED BY admin123
                DEFAULT TABLESPACE users
                QUOTA UNLIMITED ON users;
                
alter session set "_ORACLE_SCRIPT" = true;

create role rol_bd;

GRANT CREATE SESSION, 
      CREATE ANY TABLE,
      CREATE ANY VIEW,
      CREATE ANY PROCEDURE,
      ALTER ANY TABLE,
      ALTER ANY PROCEDURE,
      DROP ANY TABLE,
      DROP ANY VIEW,
      DROP ANY PROCEDURE
      TO rol_bd;
      
GRANT rol_bd to bd;


GRANT ALL PRIVILEGES TO nombreusuario
