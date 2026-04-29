Create database Ola;
Use ola;

#1 Retrieve all successful booking.alter
Create view Successful_Bookings AS
SELECT * FROM Bookings
WHERE Booking_Status = "Success";
SELECT * FROM Successful_Bookings;


#2 Find the average ride distance for each vehicle type;
CREATE VIEW ride_distance_for_each_vehicle_type AS
SELECT Vehicle_Type, AVG(Ride_Distance)
AS avg_distance FROM Bookings
GROUP BY Vehicle_Type;
SELECT * FROM ride_distance_for_each_vehicle_type;


#3 Get total number of canceled rides by customers.
CREATE VIEW total_number_of_canceled_rides_by_customers AS
SELECT COUNT(*) FROM Bookings
WHERE Booking_Status = 'Canceled by customer';
SELECT * FROM total_number_of_canceled_rides_by_customers;


#4 List the top 5 customers who booked the highest number of rides.
CREATE VIEW Top_5_customers as
SELECT Customer_ID, COUNT(Booking_ID) AS total_rides
GROUP BY Customer_ID
ORDER BY total_rides DESC LIMIT 5;
SELECT * FROM Top_5_customers;


#5 Get the number of rides canceled by drivers due to personal and car related issues
CREATE VIEW ride_canceled_by_drivers AS
SELECT COUNT(*)
FROM Bookings
WHERE Canceled_Rides_by_Driver = 'personal & car related issues';
SELECT * FROM ride_canceled_by_drivers;


#6 Find the maximum and minimum driver ratings for prime sedan bookings
create view maximum_and_minimum_driver_ratings_for_prime_sedan as
SELECT MAX(Driver_Ratings) AS max_rating,
min(Driver_Ratings) AS min_rating
FROM Bookings where Vehicle_Type = 'prime sedan';
select * from maximum_and_minimum_driver_ratings_for_prime_sedan;


#7 Retieve all rides where the payment was made using UPI
create view payment_by_upi as
select * from bookings
where Payment_Method = 'UPI';
select * from payment_by_upi;


#8 Find the average customer rating per vehicle type
CREATE VIEW average_customer_rating_per_vehicle_type as
SELECT Vehicle_Type, AVG(Customer_Rating)
from bookings
GROUP BY Vehicle_Type;
select * from average_customer_rating_per_vehicle_type;


#9 Calculate the total booking value of rides completed sucessfully
CREATE VIEW total_successful_ride_value as
SELECT SUM(Booking_Value) as total_successful_value
from bookings
where Booking_Status = 'success';
SELECT * FROM total_successful_ride_value;


#10 List all the incomplete rides along with the reason
create view incomplete_rides_reason as
SELECT Booking_ID, Incomplete_Rides_Reason
from bookings
WHERE Incomplete_Rides = 'YES';
select * from incomplete_rides_reason;





#1  Retrieve all successful booking.alter
               SELECT * FROM Successful_Bookings;
#2  Find the average ride distance for each vehicle type.
                SELECT * FROM ride_distance_for_each_vehicle_type;
#3 Get total number of canceled rides by customers.
               SELECT * FROM total_number_of_canceled_rides_by_customers;
#4 List the top 5 customers who booked the highest number of rides.
               SELECT * FROM Top_5_customers;
#5 Get the number of rides canceled by drivers due to personal and car related issues
             SELECT * FROM ride_canceled_by_drivers;
#6 Find the maximum and minimum driver ratings for prime sedan bookings
               select * from maximum_and_minimum_driver_ratings_for_prime_sedan;
#7 Retieve all rides where the payment was made using UPI
                select * from payment_by_upi;
#8 Find the average customer rating per vehicle type
              select * from average_customer_rating_per_vehicle_type;
#9 Calculate the total booking value of rides completed successfully
              SELECT * FROM total_successful_ride_value;
#10 List all the incomplete rides along with the reason
             select * from incomplete_rides_reason;
