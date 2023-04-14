CREATE Database Covid;
use covid;
select * from coviddeaths;
SELECT 
    location,
    date,
    total_cases,
    new_cases,
    total_deaths,
    population
FROM
    coviddeaths
ORDER BY 1 , 2;
select * from coviddeaths;
SELECT 
    location,
    date,
    total_cases,
    total_deaths,
    (total_deaths/total_cases)*100 as DeathPercentage
FROM
    coviddeaths
where location like '%Nigeria%'
ORDER BY 1 , 2;
SELECT 
    location,
    date,
    total_cases,
    population,
    (total_cases/population)*100 AS PercentPopulation
FROM
    coviddeaths
WHERE
    location LIKE '%Ghana%'
ORDER BY 1 , 2;
SELECT 
    location,
    MAX(total_cases) AS HighestInfectioncount,
    population,
    MAX((total_cases / population)) * 100 AS PercentPopulationInfected
FROM
    coviddeaths
GROUP BY location, population
ORDER BY PercentPopulationInfected desc;
SELECT 
    location, sum(total_deaths) AS TotalDeathCount
FROM
    coviddeaths
GROUP BY location
ORDER BY TotalDeathCount DESC;
SELECT 
    *
FROM
    CovidVaccine;
SELECT 
    *
FROM
    coviddeaths dea
        JOIN
    covidvaccine vac ON dea.location = vac.location
        AND dea.date = vac.date;