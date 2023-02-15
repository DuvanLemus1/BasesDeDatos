create user bdpri identified by admin123 
    Default TABLESPACE users
    quota unlimited on users;
    
create role rolpriv;

grant all privileges to rolpriv;

grant rolpriv to bdpri;




