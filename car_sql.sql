-- Read car data 
select * from car;
-- Total car 
select count(*) from car;
-- How many cars will be avaliable on 2023
select * from car ;
select count(*) from car where year = 2023;
-- How many cars will be avaliable on 2020,2021,2022
-- method 1
select count(*) from car where year = 2020; -- 74
select count(*) from car where year = 2021; -- 7
select count(*) from car where year = 2022; -- 7
-- Method 2
select count(*) from car where year in(2020,2021,2022)group by year;
-- Total of all cars by a year , No need all the data 
select year, count(*) from car group by year ;
-- how many dissel cars in 2020
select * from car where fuel = 'Diesel' and year = 2020;
select count(*) from car where fuel = 'Diesel' and year = 2020;
-- How many petrols cars in 2020
select * from car ;
select * from car where fuel = 'Petrol' and year = 2020;
select count(*) from car where fuel = 'Petrol' and year = 2020;
-- The details of all fuel car(petrol , Disel , cng) come by all yera 
select year, count(*) from car where fuel = 'Petrol' group by year;
select year, count(*) from car where fuel = 'Diesel' group by year;
select year, count(*) from car where fuel = 'cng' group by year;
-- There were more than 100 cars in a given year which yera has more than 100 cars 
select * from car ;
select year, count(*) from car group by year having count(*) > 100;
-- All cars counts between 2015 to 2023
select count(*) from car where year between 2015 and 2023 ;
-- All details between 2015 to 2023
select * from car where year between 2015 and 2023;



