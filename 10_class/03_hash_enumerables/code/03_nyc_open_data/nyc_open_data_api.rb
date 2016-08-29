# REFER TO README.MD FOR MORE INFORMATION

# the hash below is the format which the NYC Open Data API uses

# {
#   "sat_math_avg_score": "404",
#   "school_name": "HENRY STREET SCHOOL FOR INTERNATIONAL STUDIES",
#   "dbn": "01M292",
#   "num_of_sat_test_takers": "29",
#   "sat_writing_avg_score": "363",
#   "sat_critical_reading_avg_score": "355"
# }

# the spec file will use similar hashes to the to call your methods
# these hashes in the spec are called $first_school, $second_school, etc.
# the hashes are not hard coded but rather dynamically change as data changes
# JSON is a file format that is being fetched from the NYC API so the spec file is currently connected to the hashes in the JSON file (raw_data)
# this code works with the NYC Open Data API  



# create a method, math_score, that takes a hash as an argument and returns the value of the average math sat score of the school







# create a method, school_name, that takes a hash as an argument and rreturns the name of the school






# create a method called, all_keys, that takes a hash as an argument and prints each key







# create a method called, all_values, that takes a recycling bin hash as an argument and prints each value







# create a method called, key_and_value, that takes a recycling bin hash as an argument and prints each key and value in the format: `The #{key} is #{value}`







# challenge: create a method called highest_math that returns the highest SAT average math score in the ENTIRE dataset
# note: the spec file is calling the ENTIRE database for this method, rather than a parsed hash within the entire dataset







# challenge2: create a method called highest_critical_reading that returns the name of the high school with the highest average critical reading sat score
# note: the spec file is calling the ENTIRE database for this method, rather than a parsed hash within the entire dataset





