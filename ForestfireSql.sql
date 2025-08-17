use ForestfireSQL
go
select * from forestfires

Question 1: Find the average temperature and relative humidity for fires that occured in the regions
select x, y, avg(temp) as avg_temp, avg(RH) as avg_rh from forestfires
group by x, y

Question 2: Identify the fires with the largest area burned
select top 1 Area, x, y from forestfires
order by Area desc

Question 3: Identify the region with the highest frequency of fires
select top 1 x, y, count(*) as fire_count from forestfires
group by x, y
order by fire_count desc

Question 4: Find the month with the highest average fire area
select top 1 month, avg(area) as avg_area from forestfires
group by month
order by avg_area desc

Question 5: What is the total area burned by fires in each month
select Month, sum(Area) as total_area from forestfires
group by month
order by total_area desc

Question 6: What is the frequency of fires in each month?
select month, count(*) as fire_count from forestfires
group by month
order by fire_count desc

Question 7: What are the details of the top 10 fires with largest area burned
select top 10 * from forestfires
order by area desc