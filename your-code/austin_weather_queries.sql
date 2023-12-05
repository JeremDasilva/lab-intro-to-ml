USE austin_weather;

SELECT * FROM austin_weather;
 
-- a) How many days are recorded in the dataset?
SELECT COUNT(DATE) FROM austin_weather;

-- b) What is the day with the Highest Temperature in Fahrenheit (column TempHighF)
SELECT date, TempHighF 
FROM austin_weather
ORDER BY TempHighF DESC;

-- c) What is the average Humidity across all days? (column HumidityAvgPercent)
SELECT AVG(HumidityAvgPercent)
FROM austin_weather;

-- d) Top 10 days, where SeaLevelPressureAvgInches is the highest, knowing DewPointAvgF is higher than 28 ?
SELECT date, DewPointAvgF, SeaLevelPressureAvgInches 
FROM austin_weather
WHERE DewPointAvgF > 28
ORDER BY TempHighF ASC
LIMIT 10;