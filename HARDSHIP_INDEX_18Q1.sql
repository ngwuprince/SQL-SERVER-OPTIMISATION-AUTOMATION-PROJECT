-- Select columns from two tables with a LEFT JOIN
SELECT S.COMMUNITY_AREA_NAME, S.NAME_OF_SCHOOL, S.AVERAGE_STUDENT_ATTENDANCE, E.HARDSHIP_INDEX
FROM CHICAGO_SOCIOECONOMIC_DATA as E 
LEFT JOIN SCHOOLS as S 
-- Joining on the appropriate column
ON S.COMMUNITY_AREA_NAME = E.COMMUNITY_AREA_NAME
-- Filtering the results based on the hardship index
WHERE E.HARDSHIP_INDEX = 98;
