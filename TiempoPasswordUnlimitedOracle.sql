ALTER PROFILE DEFAULT LIMIT PASSWORD_LIFE_TIME UNLIMITED;
alter user SYSTEM identified by 123 account unlock;
commit;