DROP DATABASE IF EXISTS endor_development;
DROP DATABASE IF EXISTS endor_test;

DROP USER IF EXISTS endor_development;
DROP USER IF EXISTS endor_test;

CREATE DATABASE endor_development;
CREATE DATABASE endor_test;

CREATE USER 'endor_development'@'%' IDENTIFIED BY 'endor_development';
CREATE USER 'endor_test'@'%' IDENTIFIED BY 'endor_test';
CREATE USER IF NOT EXISTS 'root'@'%';

GRANT ALL ON endor_development.* TO 'endor_development'@'%' WITH GRANT OPTION;
GRANT ALL ON endor_test.* TO 'endor_test'@'%' WITH GRANT OPTION;
GRANT ALL ON *.* TO 'root'@'%' WITH GRANT OPTION;

SET GLOBAL time_zone = "+00:00";

FLUSH PRIVILEGES;