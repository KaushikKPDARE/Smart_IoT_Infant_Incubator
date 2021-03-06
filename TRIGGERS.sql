DELIMITER $$
CREATE
	TRIGGER `Raw_data_to_Alert` AFTER INSERT 
	ON `INCUBATOR`.`DATA_COLLECTED` 
	FOR EACH ROW 
BEGIN	
		IF NEW.`OXYGEN` > 80 AND NEW.`OXYGEN` < 37 THEN
			SET @`OPTIMUM_OXYGEN`=50;
		ELSE
            SET @`OPTIMUM_OXYGEN`=0;
		END IF;
		IF NEW.`HUMIDITY` > 75 AND NEW.`HUMIDITY` < 40 THEN
			SET @`OPTIMUM_HUMIDITY`=55;
		ELSE
            SET @`OPTIMUM_HUMIDITY`=0;
		END IF;
        IF NEW.`TEMPERATURE` > 92.00 AND NEW.`TEMPERATURE` < 88.00 THEN
			SET @`OPTIMUM_TEMPERATURE`=90.00;
		ELSE
            SET @`OPTIMUM_TEMPERATURE`=0.00;
		END IF;	
    
		INSERT INTO `INCUBATOR`.`ALERT` (ALERT_ID, INCUBATOR_NUMBER, ALERT_MESSAGE, EMPLOYEE_ID,OPTIMUM_OXYGEN,
		OPTIMUM_HUMIDITY, OPTIMUM_TEMPERATURE, RAW_DATA_ID, PERSON_ID) VALUES (ALERT_ID, INCUBATOR_NUMBER, 
        ALERT_MESSAGE, EMPLOYEE_ID, @`OPTIMUM_OXYGEN`,@`OPTIMUM_HUMIDITY`,@`OPTIMUM_TEMPERATURE`,RAW_DATA_ID,
        PERSON_ID);
	END$$
DELIMITER ;

DELIMITER $$
CREATE
	TRIGGER `DeleteTrig` BEFORE DELETE
	ON `INCUBATOR`.`INCUBATOR` 
	FOR EACH ROW 
BEGIN	
		DELETE FROM `INCUBATOR`.`DATA_COLLECTED` WHERE `WEIGHT`>2500; 
	END$$
DELIMITER ;

DELIMITER $$
CREATE
	TRIGGER `Alert_to_Rawdata` BEFORE UPDATE  
	ON `INCUBATOR`.`DATA_COLLECTED` 
	FOR EACH ROW 
BEGIN	
		IF NEW.`OXYGEN` > 80.00 AND NEW.`OXYGEN` < 37.00 THEN
			SET @`OXYGEN`=0.00;
		END IF;
		IF NEW.`HUMIDITY` > 75.00 AND NEW.`HUMIDITY` < 40.00 THEN
			SET @`HUMIDITY`=0.00;
		END IF;
        IF NEW.`TEMPERATURE` > 92.00 AND NEW.`TEMPERATURE` < 88.00 THEN
			SET @`TEMPERATURE`=0.00;
		END IF;	
    
		INSERT INTO `INCUBATOR`.`DATA_COLLECTED` (RAW_DATA_ID, WEIGHT, BABY_TEMP, OXYGEN, HUMIDITY, 
        TEMPERATURE, TIME, STATUS, INCUBATOR_NO, PERSON_ID, PATIENT_ID, PA_ID) VALUES (RAW_DATA_ID, WEIGHT, BABY_TEMP, 
        @`OXYGEN`,@`HUMIDITY`,@`TEMPERATURE`, NOW(), STATUS, INCUBATOR_NO, PERSON_ID, PATIENT_ID, PA_ID);
	END$$
DELIMITER ;