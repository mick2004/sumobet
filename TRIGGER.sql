DROP TRIGGER settingsTable

CREATE TRIGGER settingsTable 
AFTER INSERT ON aps_users
FOR EACH ROW 
INSERT INTO aps_wpdatatable_2 (emailforoddsalert,id)
    VALUES (NEW.user_email,New.ID)