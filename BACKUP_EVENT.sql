START TRANSACTION;
delimiter |

CREATE EVENT Backup_Table1
    ON SCHEDULE
      EVERY 30 day
    COMMENT 'Takes backup every day'
    DO BEGIN
    SET @sql_text = 
   CONCAT (
   "SELECT * FROM `INCUBATOR` INTO OUTFILE 'C:\Users\kpdar\Desktop\backup"
   , DATE_FORMAT( NOW(), '%Y%m%d')
   , "backup.csv'"
);
PREPARE s1 FROM @sql_text;
 EXECUTE s1;    
 END |
 
 DROP PREPARE s1;
delimiter ;
COMMIT;