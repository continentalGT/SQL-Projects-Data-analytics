use shubh;
select * from employeeattrition;

#1.Finding employee under attrition having 5+ expiriece and between age group of 27-35
select *
from employeeattrition
where age between 27 and 35 and TotalWorkingYears>=5 and Attrition='Yes';

#2.Employee sa;lary receiving max and min salary of differnt department  and having salalry hike less than 11%
select Department ,max(MonthlyIncome) as max_income,min(MonthlyIncome) as min_income
from employeeattrition
where PercentSalaryHike<13
group by Department
order by max(MonthlyIncome) desc;

#3.avg monthly income of emp working more than 3 years and having educational background as Medical
select avg(MonthlyIncome) from employeeattrition where EducationField='Medical' and TotalWorkingYears>=3;

#4.Totla number of male and female employee under attrition whose marital status is married and havnt received promotion in last 2 year
select * from employeeattrition;
select Gender,count(gender)
from employeeattrition
where MaritalStatus='Married' and YearsSinceLastPromotion=2
group by Gender;

#5.Emplotees with maximum performance rating and havent receive promotion since last 4 years and more
select *
from employeeattrition
where PerformanceRating=(select max(PerformanceRating) from employeeattrition) and  YearsSinceLastPromotion>=4;

#6.employee working overtime and given min slalry hike and within company for more than 3 years
select * from employeeattrition
where PercentSalaryHike=(select min(PercentSalaryHike) from employeeattrition) and YearsAtCompany>=5 and OverTime='Yes';


