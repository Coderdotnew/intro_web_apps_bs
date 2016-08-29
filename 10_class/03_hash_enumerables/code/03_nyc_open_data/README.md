# NYC SAT Data
New York City has open-sourced a lot of really interesting [data about life in the city](https://nycopendata.socrata.com/), such as a list of all the public bathrooms, where to find free wifi, restaurant sanitation grades, theatre locations, and many more. 

Along with making this information free and available to the public, the City has made the information available through an API so we can build cool apps with their data. 

## APIs?

API stands for Application Programming Interface. It's basically a way for one app to communicate and use the data from another app. For example, Instagram used to use Foursquare for adding locations to images.

In this lab, you're not going to worry about how the API works, or how to use an API, just about how the data comes back from the API. Usually, all information from APIs gets sent to the application trying to use the data in the form of JSON. JSON (JavaScript Object Notation) is basically a set of nested arrays and hashes that make up the interesting data.

## Hashes

We've formatted the data from NYC Open Data about average SAT scores from high schools around the city so that each school is it's own hash. Your job as a developer is to get comfortable with hashes. If you ever want to use an API for a future project, it's really important to be comfortable with data structures.


## Getting Started
You'll be coding your solutions in `nyc_open_data_api.rb`.

You have four hashes to work with, stored in four different variables that are pre-defined in the rspec file.

```ruby
$first_school
$second_school
$third_school
$fourth_school
```
- Remember, the `$` means it is a global variable with greater scope  

The API integration has been set up and those variables are assigned to the first four hashes in the dataset. Remember, because we're getting this data from NYC open data, you won't actually see the hash hard-coded in `nyc_recycles.rb`. 

For reference, this is what each hash would look like:

```ruby
$first_school = {
    "sat_math_avg_score": "404",
    "school_name": "HENRY STREET SCHOOL FOR INTERNATIONAL STUDIES",
    "dbn": "01M292",
    "num_of_sat_test_takers": "29",
    "sat_writing_avg_score": "363",
    "sat_critical_reading_avg_score": "355"
},
$second_school = {
    "sat_math_avg_score": "423",
    "school_name": "UNIVERSITY NEIGHBORHOOD HIGH SCHOOL",
    "dbn": "01M448",
    "num_of_sat_test_takers": "91",
    "sat_writing_avg_score": "366",
    "sat_critical_reading_avg_score": "383"
},
$third_school = {
    "sat_math_avg_score": "402",
    "school_name": "EAST SIDE COMMUNITY SCHOOL",
    "dbn": "01M450",
    "num_of_sat_test_takers": "70",
    "sat_writing_avg_score": "370",
    "sat_critical_reading_avg_score": "377"
},
$fourth_school = {
    "sat_math_avg_score": "401",
    "school_name": "FORSYTH SATELLITE ACADEMY",
    "dbn": "01M458",
    "num_of_sat_test_takers": "7",
    "sat_writing_avg_score": "359",
    "sat_critical_reading_avg_score": "414"
},
```
- If that's still confusing where those hashes came from, head over to [NYC SAT Data](https://data.cityofnewyork.us/resource/f9bf-2cp4.json) to check out the entire data structure for yourself. 

## Navigation  
##### Next class: [Application Build and APIs](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/11_class)  
##### Back to lesson: [Hash Enumerables](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/05_class/02_array_enumerables)   
