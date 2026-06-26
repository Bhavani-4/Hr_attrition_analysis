--HR ATTRITION ANALYSIS PROJECT

--Database Creation
create database HR_attrition_db

--Database Selection
use HR_attrition_db

--Data Verification
select top 10* from Hr_data

--Count Records
select count(*)as Total_Employees from Hr_data

--Overall attrition rate
select round(AVG(Attrition_Flag)*100,2)as attrition_rate
from hr_data
select concat(round(AVG(Attrition_Flag)*100,2),'%')as attrition_rate
from hr_data

--Department-wise Attrition
select Department,
AVG(Attrition_Flag) as Attrition_Rate
from Hr_data
group by Department
order by Attrition_Rate desc

--salary vs attrition
select salary_group,
AVG(Attrition_Flag) as Attrition_Rate
from Hr_data
group by salary_group
order by Attrition_Rate desc

--Experience vs attrition
select Experience_group,
AVG(Attrition_Flag) as Attrition_Rate
from Hr_data
group by experience_group
order by Attrition_Rate desc

--Satisfaction vs attrition
select satisfaction_group,
AVG(Attrition_Flag) as Attrition_Rate
from Hr_data
group by satisfaction_group
order by Attrition_Rate desc

--combination analysis
select 
salary_group,
satisfaction_group,
AVG(Attrition_Flag) as Attrition_Rate
from Hr_data
group by salary_group,satisfaction_group
order by Attrition_Rate desc

