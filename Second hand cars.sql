# 1. Selecting our database
use cars;

# 2. Displaying our table
select * from cars1;

# 3. Total cars: To get count of total records?
select count(*) as "Total count of record" from cars1;

# 4. How many cars will be available in 2023?
select count(*) as "Available cars in 2023"
from cars1
where year = 2023;

# 5. How many cars are available in 2020,2021 and 2022?
select count(*) as "Cars available in years 2020,2021 and 2022"
from cars1
where 
year in (2020,2021,2022)
group by year;

# 6. Total number of cars by year?
select year, count(*) as "Cars available in years 2020,2021 and 2022"
from cars1
group by year; 

# 7. How many diesel cars were there in 2020?
select count(*) as "Number Of Diesel Cars in 2020"
from cars1
where
year = 2020 and  fuel = "Diesel";

# 8. How many petrol cars were there in 2020?
select count(*) as "Number Of Petrol Cars in 2020"
from cars1
where
year = 2020 and  fuel = "Petrol";

# 9. How many fuel cars (Petrol, diesel and CNG individually) each year?
SELECT 
    year, 
    SUM(CASE WHEN fuel = 'Petrol' THEN 1 ELSE 0 END) AS petrol_count,
    SUM(CASE WHEN fuel = 'Diesel' THEN 1 ELSE 0 END) AS diesel_count,
    SUM(CASE WHEN fuel = 'CNG' THEN 1 ELSE 0 END) AS cng_count
FROM 
    cars1
GROUP BY 
    year
ORDER BY 
    year;

# 10. In which year, more than 100 cars were sold?
select year, count(*) as "Count of Cars"
from cars1
group by year
having count(*)>100;

# 11. All car details count between 2015 and 2023.
select count(*) as "Count of Cars"
from cars1
where year between 2015 and 2023; 

# 12. We need complete list of cars sold between 2015 and 2023
select * from cars1
where year between 2015 and 2023;






