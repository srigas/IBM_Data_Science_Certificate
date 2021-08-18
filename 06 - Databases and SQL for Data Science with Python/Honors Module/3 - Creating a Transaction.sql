--#SET TERMINATOR @
CREATE OR REPLACE PROCEDURE UPDATE_LEADERS_SCORE ( 
    IN in_School_ID INTEGER, IN in_Leader_Score INTEGER)

LANGUAGE SQL
MODIFIES SQL DATA

BEGIN 

    UPDATE CHICAGO_PUBLIC_SCHOOLS
    SET LEADERS_SCORE = in_Leader_Score
    WHERE SCHOOL_ID = in_School_ID;
    
    IF in_Leader_Score > 0 AND in_Leader_Score < 20 THEN
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET LEADERS_ICON = 'Very weak'
        WHERE SCHOOL_ID = in_School_ID;
    
    ELSEIF in_Leader_Score < 40 THEN
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET LEADERS_ICON = 'Weak'
        WHERE SCHOOL_ID = in_School_ID;
        
    ELSEIF in_Leader_Score < 60 THEN
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET LEADERS_ICON = 'Average'
        WHERE SCHOOL_ID = in_School_ID;
        
    ELSEIF in_Leader_Score < 80 THEN
    	UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET LEADERS_ICON = 'Strong'
        WHERE SCHOOL_ID = in_School_ID;
    
    ELSEIF in_Leader_Score < 100 THEN
    	UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET LEADERS_ICON = 'Very strong'
        WHERE SCHOOL_ID = in_School_ID;
        
    ELSE
    	ROLLBACK WORK;
    	
    END IF;
    
    COMMIT WORK;
    
END
@