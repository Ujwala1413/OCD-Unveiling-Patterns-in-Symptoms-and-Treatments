-- created database
create database healthcare;

use healthcare;

-- Imported data ocd_patient_dataset

-- selecting complete dataset
select * from ocd_patient_dataset;

-- 1. Count, percentage count of Male and Female and genderwise average obsession score
select Gender,
count('PatientID') as patient_count,
round(count('PatientID') * 100.0 / (select count(*) from ocd_patient_dataset),2) as gender_percentage,
round(avg(`Y-BOCS Score (Obsessions)`), 2) as avg_obsession_score
from ocd_patient_dataset
group by Gender
order by avg_obsession_score;

-- 2. Count and average obsession score by ethnicities that have OCD.
select 
Ethnicity,
count('PatientID') as patient_count,
round(avg(`Y-BOCS Score (Obsessions)`), 2) as obs_score
from ocd_patient_dataset
group by Ethnicity
order by obs_score;

-- 3. Number of people diagnosed with OCD MoM.
set SQL_SAFE_UPDATES = 0;
ALTER TABLE ocd_patient_dataset
MODIFY `OCD Diagnosis Date` DATE;          -- formated text date to date type.
set SQL_SAFE_UPDATES = 1;

select 
date_format(`OCD Diagnosis Date`, '%Y-%m-01 00:00:00') as month,
count('PatientID') as patient_count
from ocd_patient_dataset
group by 1
order by 1;

-- 4. Most common obsession type count and its respective average obsession score.
select `Obsession Type`, 
count(`Patient ID`) as patient_count,
round(avg(`Y-BOCS Score (Obsessions)`),2) as obs_score
from ocd_patient_dataset
group by `Obsession Type`
order by patient_count desc;

-- 5. Most common compulsions type count and its respective average obsession score.
select `Compulsion Type`, 
count(`Patient ID`) as patient_count,
round(avg(`Y-BOCS Score (Compulsions)`),2) as obs_score
from ocd_patient_dataset
group by `Compulsion Type`
order by patient_count desc;

select * from ocd_patient_dataset;

-- 6. Count of Patient
select count(`Patient ID`) as total_patients
from ocd_patient_dataset;

-- 7. Distinct count of patients 
select count(distinct `Patient ID`) as total_patients
from ocd_patient_dataset;

-- 8. Average age of patient.
select round(avg(Age),0) as Average_Age
from ocd_patient_dataset;

-- 9. Average age distribution by gender
select Gender, 
round(avg(Age),0) as average_age
from ocd_patient_dataset
group by Gender;

-- 10. Distribution of Education level
select `Education Level`, count(*) as Count
from ocd_patient_dataset
group by `Education Level`;

-- 11. Education Level vs. Y-BOCS Scores
select `Education Level`,
round(avg(`Y-BOCS Score (Obsessions)`),2) as Avg_Obsession_Score, 
round(avg(`Y-BOCS Score (Compulsions)`),2) as Avg_Compulsion_Score
from ocd_patient_dataset
group by `Education Level`;

-- 12. Genderwise Max & Min Obsession and Compulsion Score
select Gender, 
max(`Y-BOCS Score (Obsessions)`) as max_obs_score,
min(`Y-BOCS Score (Obsessions)`) as min_obs_score,
round(avg(`Y-BOCS Score (Obsessions)`),2) as avg_obs_score,
max(`Y-BOCS Score (Compulsions)`) as max_comp_score,
min(`Y-BOCS Score (Compulsions)`) as min_comp_score,
round(avg(`Y-BOCS Score (Compulsions)`),2) as avg_comp_score
from ocd_patient_dataset
group by Gender;

-- 13. Average duration of symptoms by previous diagnosis.
select `Previous Diagnoses`, round(avg(`Duration of Symptoms (months)`),0) as Avg_Duration_in_months
from ocd_patient_dataset
group by `Previous Diagnoses`;

-- 14. Common Medications by Diagnosis
select `Previous Diagnoses`, `Medications`, count(*) as Patient_Count
from ocd_patient_dataset
group by  `Previous Diagnoses`, `Medications`;

-- 15. Correlation Between Family History and OCD Severity
select `Family History of OCD`, avg(`Y-BOCS Score (Obsessions)` + `Y-BOCS Score (Compulsions)`) as Avg_Severity_Score
from ocd_patient_dataset
group by `Family History of OCD`;

-- 16. Prevalence of Depression Among OCD Patients
select `Depression Diagnosis`, count(*) as Patient_Count
from ocd_patient_dataset
group by `Depression Diagnosis`;

-- 17. Medication vs. Average Y-BOCS Scores
select `Medications`, avg(`Y-BOCS Score (Obsessions)` + `Y-BOCS Score (Compulsions)`) AS Avg_YBOCS_Score
from ocd_patient_dataset
group by `Medications`;

-- 18. Medications for Patients with Both Depression and Anxiety
select Medications, count(*) as Count
from ocd_patient_dataset
where `Depression Diagnosis`= 'Yes' and  `Anxiety Diagnosis`= 'Yes'
group by Medications;

-- 19. Change in Average Y-BOCS Scores Over Time
select `OCD Diagnosis Date`, round(avg(`Y-BOCS Score (Obsessions)` + `Y-BOCS Score (Compulsions)`), 2)as Avg_YBOCS_Score
from ocd_patient_dataset
group by `OCD Diagnosis Date`
order by `OCD Diagnosis Date`;

-- 20. Duration of Symptoms vs. Diagnosis Date
select `OCD Diagnosis Date`, round(avg(`Duration of Symptoms (months)`),0) as Avg_Duration_in_months
from ocd_patient_dataset
group by `OCD Diagnosis Date`
order by `OCD Diagnosis Date`;

-- 21. Most common obsession type 
select `Obsession Type`, count(*) as Count
from ocd_patient_dataset
group by `Obsession Type`
order by Count desc
limit 1;

-- 22. Most common compulsion type
select `Compulsion Type`, count(*) as Count
from ocd_patient_dataset
group by `Compulsion Type`
order by Count desc
limit 1;








