
--- USE Project_work.absenteetism_at_work

--- Creating a JOIN table
--- Here i used LEFT JOIN table to join the reasons of absenteeism and they number of
--- times that they gave the same reason in a year


SELECT 
    *
FROM
    Absenteeism_at_work a
        LEFT JOIN
    compensation b ON a.ID = b.ID
        LEFT JOIN
    Reasons r ON a.Reason_for_absence = r.Number;


-- To Find the Healthest Employee fOr the bonus
--- Here i filtered to see empkoyees that were non-drinker and smokers and
--- with body mass index less than 25, as we were trying to removed association from causation of going for
--- sick leave.


SELECT 
    *
FROM
    Absenteeism_at_work
WHERE
    Social_drinker = 0 AND Social_smoker = 0
        AND (Body_mass_index) < 25
        AND Absenteeism_time_in_hours < (SELECT AVG(Absenteeism_time_in_hours));


--- Here the number of Non-smokers was calculated which were 686 Employees.  This means for Non-Smokers who went for sick leave there will be aan increase  
--- in their compensation rate for the periods of Sick leave compared to Smokers

SELECT 
    COUNT(*) AS Nonsmokers
FROM
    Absenteeism_at_work
WHERE
    Social_smoker = 0

--- Here I tried to optimize the Queries and JOIN tables to get the key information i needed for the Analysis 

SELECT 
    a.ID, 
    r.Reason,
    compensation,
FROM
    Absenteeism_at_work a
        LEFT JOIN
    compensation b ON a.ID = b.ID
        LEFT JOIN
    Reasons r ON a.Reason_for_absence = r.Number;
    
--- Here explained if the Four Seasons has any association with reasons Employees were Absent from work 
SELECT 
    a.ID,
    r.Reason,
    Month_of_absence,
    (Body_mass_index),
    CASE
        WHEN Month_of_Absence IN (12 , 1, 2) THEN 'Winter'
        WHEN Month_of_Absence IN (3 , 4, 5) THEN 'SPring'
        WHEN Month_of_Absence IN (6 , 7, 8) THEN 'Summer'
        WHEN Month_of_Absence IN (9 , 10, 11) THEN 'Autumn'
        ELSE 'unknown'
    END AS Season_Names
FROM
    Absenteeism_at_work a
        LEFT JOIN
    compensation b ON a.ID = b.ID
        LEFT JOIN
    Reasons r ON a.Reason_for_absence = r.NUMBER;


SELECT 
    a.ID, r.Reason
FROM
    Absenteeism_at_work a
        LEFT JOIN
    compensation b ON a.ID = b.ID
        LEFT JOIN
    Reasons r ON a.Reason_for_absence = r.Number;

SELECT 
    a.ID,
    r.Reason,
    Month_of_absence,
    (Body_mass_index),
    CASE
        WHEN (Body_mass_index) < 18.5 THEN 'Underweight'
        WHEN (Body_mass_index) BETWEEN 18.5 AND 25 THEN 'Healthy Weight'
        WHEN (Body_mass_index) BETWEEN 25 AND 30 THEN 'Overweight'
        WHEN (Body_mass_index) > 30 THEN 'Obese'
        ELSE 'unknown'
    END AS BMI_Category
FROM
    Abstenteeism_at_work
     LEFT JOIN compensation b ON a.ID = b.ID;
     
     
	SELECT 
    Seasons,
    Month_of_absence,
    Transportation_expense,
    Education,
    Son,
    Social_Drinker,
    Social_smoker,
    Pet,
    Disciplinary_failure,
    Age,
    Work_load_Average_day,
    Absenteeism_time_in_hours
FROM
    Absenteeism_at_work a
        LEFT JOIN
    compensation b ON a.ID = b.ID
        LEFT JOIN
    Reasons r ON a.Reason_for_absence = r.Number;

