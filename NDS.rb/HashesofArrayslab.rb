#Intro 
#The final "basic" nested structure is the Hash of Arrays.

#Key Image: Result Set
#The key image is to think of a result set. You might think of it as a weather report for a day where you sample different measurements multiple times per day. You might track :temperature at midnight, noon, and 6:00 p.m.; :rainfall_level at midnight, noon, and 6:00pm; and :humidity at midnight, noon, and 6:00pm. Those sample results would go inside of Arrays that are accessible via the keys :temperature, :rainfall_level, and :humidity.

#Recognize Vocabulary Term: "Hash of Arrays"
#"Hash of Arrays" is an infrequently used term. As you get more experienced with Ruby, it's typical to merely know that a Hash's key might point to scalar values (1.0, "Smith") or to an Array. While we're starting out with learning Ruby, though, let's briefly take time to acknowledge that this basic NDS exists.

#Create a Hash of Arrays
#It's most common to create Hash of Arrays in the "literal" format. We'll build on our weather example.

daily_weather = {
  temperature: [75, 80, 72],
  precipitation: [0.0, 0.01, 0.03]
  wind_velocity: [4, 3, 2]
  barometric_pressure: [30.32, 30.30, 30.20]
}
#
#Read Scalar Data from a Hash of Arrays
#To read data from a Hash of Arrays we provide:
#A key name, An index

daily_weather = {
  temperature: [75, 80, 72],
  precipitation: [0.0, 0.01, 0.03]
  wind_velocity: [4, 3, 2]
  barometric_pressure: [30.32, 30.30, 30.20]
}
 
# Addition
daily_weather[:temperature][2] #=> 72
 
# Access the whole Array
daily_weather[:temperature] #=> [75, 80, 72]
 
#Modify scalar data in a Hash of Arrays
#Again, providing a key and an index will let you modify the inner Arrays:

daily_weather[:temperature][2] = 74 #=> 74
daily_weather[:temperature][2] #=> 74

#Most often, we modify data in an HoA by using the key to get a hold of the Array so that we can use Array methods on the inner Array. Let's suppose we're adding new measurements for the day.

daily_weather[:temperature] << 76 #=> [75, 80, 72, 76]
daily_weather[:precipitation] << 1.01 #=> [0.0, 0.01, 0.03, 1.01]
daily_weather[:wind_velocity] << 2.2 #=> [4, 3, 2, 2.2]
daily_weather[:barometric_pressure] << 28.0 #=> [30.32, 30.3, 30.2, 28.0]




