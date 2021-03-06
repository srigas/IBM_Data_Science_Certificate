CREATE VIEW SCHOOLS_VIEW (School_Name, Safety_Rating, Family_Rating,
Environment_Rating, Instruction_Rating, Leaders_Rating, Teachers_Rating)
AS SELECT NAME_OF_SCHOOL, SAFETY_ICON, FAMILY_INVOLVEMENT_ICON,
ENVIRONMENT_ICON, INSTRUCTION_ICON, LEADERS_ICON, TEACHERS_ICON
FROM CHICAGO_PUBLIC_SCHOOLS;

SELECT * FROM SCHOOLS_VIEW;

SELECT School_Name, Leaders_Rating FROM SCHOOLS_VIEW;