create user 'administrator'@'localhost' identified by 'administrator';

grant all privileges on *.* to 'administrator'@'localhost';

ALTER USER 'hbstudent'@'localhost' IDENTIFIED WITH mysql_native_password BY 'hbstudent';