CREATE OR REPLACE TABLE `data-with-ambuk.uber_data_engineering.tbl_analytics` as (

SELECT 

f.VendorID,
d.tpep_pickup_datetime, 
d.tpep_dropoff_datetime, 
p.passenger_count, 
t.trip_distance,
r.rate_code_name, 
pick.pickup_latitude,
drop1.dropoff_latitude,
drop1.dropoff_longitude,
pay.payment_type_name,
f.fare_amount,
f.extra,
f.mta_tax,
f.tip_amount,
f.tolls_amount,
f.improvement_surcharge

FROM 

`data-with-ambuk.uber_data_engineering.fact_table` f
JOIN `data-with-ambuk.uber_data_engineering.datetime_dim` d on f.datetime_id = d.datetime_id
JOIN `data-with-ambuk.uber_data_engineering.passenger_count_dim` p on p.passenger_count_id = f.passenger_count_id
JOIN `data-with-ambuk.uber_data_engineering.trip_distance_dim` t on t.trip_distance_id = f.trip_distance_id
JOIN `data-with-ambuk.uber_data_engineering.rate_code_dim` r on r.rate_code_id = f.rate_code_id
JOIN `data-with-ambuk.uber_data_engineering.pickup_location_dim` pick on pick.pickup_location_id = f.pickup_location_id
JOIN `data-with-ambuk.uber_data_engineering.dropoff_location_dim` drop1 on drop1.dropoff_location_id = f.dropoff_location_id
JOIN `data-with-ambuk.uber_data_engineering.payment_type_dim` pay on pay.payment_type_id = f.payment_type_id

);