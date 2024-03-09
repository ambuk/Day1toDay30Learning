
The other day, I was booking Lyft with my destination set to almost 2 miles away to a bus station through which I was supposed to catch a bus to the airport, and then take a plane to connecting flight, take a lay-over for four hours and then finally take a flight to my home destination being India and then go to my house, meet my parents on the airport, go to my house, sleep for a while, wake up next day, clean myself up and then, you get the idea.



So yeah, coming back to Lyft, as the car arrived, the driver saw me with my three pieces of luggage and six other roommates (seeing me off), fled the scene, and canceled the booking at the last hour. It was as if he thought that we were Indians and we could fit more in less. Imagine the chain of events attached to the driver, and now imagine how furious I would have been. This was all happening in 𝐫𝐞𝐚𝐥-𝐭𝐢𝐦𝐞.



Thanks to 𝐀𝐩𝐚𝐜𝐡𝐞 𝐊𝐚𝐟𝐤𝐚, I got a real-time notification and booked a new driver immediately. In complex terms, Kafka is a 𝐬𝐭𝐫𝐞𝐚𝐦 𝐩𝐫𝐨𝐜𝐞𝐬𝐬𝐢𝐧𝐠 𝐩𝐥𝐚𝐭𝐟𝐨𝐫𝐦 used to process data that endlessly comes from distributed events; in this case, the driver cancels the ride, updates events, and sends it to the server.

Inspired by Darshil Parmar, I'll start a new project by performing a '𝐑𝐞𝐚𝐥 𝐓𝐢𝐦𝐞 𝐒𝐭𝐨𝐜𝐤 𝐀𝐧𝐚𝐥𝐲𝐬𝐢𝐬’ using Kafka.



Here's my git repo to refer to the daily code :



Let's understand some components of Kafka before diving into the project :



1) 𝐏𝐫𝐨𝐝𝐮𝐜𝐞𝐫: Something that produces data, basically, the stock market data in this case. The data is written using messages and can be implemented using Python, Go, C++, or Java.

2) 𝐁𝐫𝐨𝐤𝐞𝐫: A fancy name for a server or a node; a good example could be a single ec2 instance. A zookeeper is present to manage brokers; if one fails, the other can be utilized.

3) 𝐂𝐨𝐧𝐬𝐮𝐦𝐞𝐫: Based on the consumption, the consumer can take the data from the broker. It pulls messages from the Topics.

4) 𝐓𝐨𝐩𝐢𝐜𝐬: They are logical buckets inside the Kafka server.

5) 𝐏𝐚𝐫𝐭𝐢𝐭𝐢𝐨𝐧𝐬: When we dissect topics, we see there are multiple partitions inside topics.

6) 𝐒𝐞𝐠𝐦𝐞𝐧𝐭𝐬: These partitions further store the data into segments in the form of log files.



To understand the flow, the producer gives the data, it goes through a set of brokers, which has multiple partitions to store that data, and then finally, the consumer gets the data through these partitions.



Once we go through the project, we'll be able to understand it more effectively.


