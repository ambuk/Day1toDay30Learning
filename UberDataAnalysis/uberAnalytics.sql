-- Find the top 10 pickup locations based on number of trips
 SELECT a.pickup_location_id, count(a.pickup_location_id) as ct FROM `data-with-ambuk.uber_data_engineering.fact_table` a join `data-with-ambuk.uber_data_engineering.pickup_location_dim` b on a.pickup_location_id = b.pickup_location_id group by a.pickup_location_id order by ct desc limit 10

-- Find the total number of trips by passenger count
  SELECT a.passenger_count_id, count(a.passenger_count_id) as ct FROM `data-with-ambuk.uber_data_engineering.fact_table` a join `data-with-ambuk.uber_data_engineering.passenger_count_dim` b on a.passenger_count_id = b.passenger_count_id group by a.passenger_count_id

-- FInd the average fare amount by pick up hour of day
SELECT b.pick_hour, avg(a.fare_amount) as avg_amount FROM `data-with-ambuk.uber_data_engineering.fact_table` a join `data-with-ambuk.uber_data_engineering.datetime_dim` b on a.datetime_id = b.datetime_id group by b.pick_hour 

