create database crime_against_women;
use crime_against_women;

select * from crime_against_women;

alter table crime_against_women
rename column MyUnknownColumn to Serial_NO;

alter table crime_against_women
add total_crimes int;

describe crime_against_women;
-- Write the total crimes rigistered in india from 2021-2021
SELECT SUM(total_crimes) as total_registered_crime from crime_against_women;

-- write query to get all crimes total with their respective mannar
select sum(Rape) as total_rape from crime_against_women;



select sum(kidnap) as total_kidnap from crime_against_women;

select sum(DD) as total_DD from crime_against_women;

select sum(AoW) as total_AoW from crime_against_women;

select sum(AoM) AS tOTAL_AoM from crime_against_women;


select sum (DV) As total_DV from crime_against_women;

select sum(WT) as total_WT from crime_against_women;


-- write a total yealy crimes reported 
select year, sum(total_crimes) as yearly_crime from crime_against_women
group by year ;

-- write a query of top 5 years and thier yearly total crimes 
select year, sum(total_crimes) as yearly_crime from crime_against_women
group by year 
order by yearly_crime desc
limit 5 ;

-- write a query of state wise and year wise avarage crimes reported 
select state, sum(total_crimes) from crime_against_women
group by state;

-- top 5 crime reported states
select state, sum(total_crimes) from crime_against_women
group by state
order by state desc
limit 5;

-- write a query which 5 states are safety for living
select state, sum(total_crimes) from crime_against_women
group by state
order by state asc
limit 5;

-- year wise all crime avg
-- rape
select year, avg(rape) as yearly_rape_rate from crime_against_women
group by year;

-- kidnap
select year, avg(kidnap) as yearly_rape_rate from crime_against_women
group by year;

-- DD
select year, avg(DD) as yearly_rape_rate from crime_against_women
GROUP BY YEAR;

-- AoW
select year, avg(Aow) as yearly_rape_rate from crime_against_women
GROUP BY YEAR;

-- AoM
select year, avg(AoM) as yearly_rape_rate from crime_against_women
GROUP BY YEAR;

-- dv
select year, avg(Dv) as yearly_rape_rate from crime_against_women
GROUP BY YEAR;

-- WT
select year, avg(WT) as yearly_rape_rate from crime_against_women
GROUP BY YEAR;








 






