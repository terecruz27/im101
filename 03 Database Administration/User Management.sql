#Login using sys as sysdba then run the code below:

CREATE USER username IDENTIFIED BY password;

GRANT CONNECT TO username;

GRANT ALL PRIVILEGES TO username;