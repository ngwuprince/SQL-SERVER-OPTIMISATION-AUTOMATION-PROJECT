--#SET TERMINATOR @
CREATE PROCEDURE UPDATE_LEADER_SCORE ( 
    IN School_ID INTEGER, IN Leader_Score INTEGER )     
LANGUAGE SQL                                              
MODIFIES SQL DATA                          
BEGIN 
    IF Leader_Score > 0 AND Leader_Score < 20 THEN
		UPDATE SCHOOLS 
		SET Leaders_Icon = 'very weak'
		WHERE SCHOOL_ID = School_ID;

	ELSEIF Leader_Score < 40 THEN
		UPDATE SCHOOLS 
		SET Leaders_Icon = 'weak'
		WHERE SCHOOL_ID = School_ID;

	ELSEIF Leader_Score < 60 THEN
		UPDATE SCHOOLS 
		SET Leaders_Icon = 'average'
		WHERE SCHOOL_ID = School_ID;

	ELSEIF Leader_Score < 80 THEN
		UPDATE SCHOOLS 
		SET Leaders_Icon = 'strong'
		WHERE SCHOOL_ID = School_ID;

	ELSEIF Leader_Score < 100 THEN
		UPDATE SCHOOLS 
		SET Leaders_Icon = 'very strong'
		WHERE SCHOOL_ID = School_ID;
		
	ELSE
        ROLLBACK WORK;

    END IF;
    COMMIT WORK;
END@
