# hash_enumerables
TIME TO ENUMERATE IN HASHES! The process is very similar to arrays, but with hashes, we have an extra column of data to deal with. Let's look at some syntax...  
```ruby
birthday_hash = {
    "Neil deGrasse Tyson" => "5/5/1958",
    "Stephen Hawking" => "1/8/1942",
    "Grace Hopper" => "12/9/1906"
}

birthday_hash.each do |key, value|
    puts "#{key} was born on #{value}."
end
# Neil deGrasse Tyson was born on 5/5/1958.
# Stephen Hawking was born on 1/8/1942.
# Grace Hopper was born on 12/9/1906.
```
- Everything is the same, except with hashes, we must also iterate over the value, as well as the key! 
- Note: Inside the pipes (`||`), the key must be first, followed by the value. However, when these items are referred to in the line below, they can be called in either order.

# each_key_method
Hashes can also iterate over only the key, if you don't want to worry about the values just quite yet. There is a beautiful method and I bet you guessed it... `.each_key`
```ruby
birthday_hash = {
    "Neil deGrasse Tyson" => "5/5/1958",
    "Stephen Hawking" => "1/8/1942",
    "Grace Hopper" => "12/9/1906"
}

birthday_hash.each_key do |key|
    puts "#{key}."
end
# Neil deGrasse Tyson
# Stephen Hawking 
# Grace Hopper
```
- There is also a method to iterate over *each value* and I bet you can also figure out what the name of this method is and how it is used...

# nested_data_structures
Data structures can very quickly become complex. We refer to data structures inside of other data structures as being *nested*. Let's check out when we have arrays inside of hashes.
```ruby
usernames = {
    :facebook4life => ["Mark Zuckerberg", "mark@facebook.com", "Abcd1234"],
    :facebook4lyf => ["Eduardo Saverin", "eduardo@facebook.com", "Password"],
    :facebookforlife => ["Sheryl Sandberg", "sheryl@facebook.com", "p@ssw0rd"]
}
```
- In order to access a specific item, we can think of first navigating towards the *value index* and then we must realize this is an array and must again access a specific item using the *array's index*. For instance, let's access Sheryl's email.
```ruby
usernames.values[2][1]
#=> sheryl@facebook.com
```
- If we break this down, the first index value (`[2]`) refers to the array for `:sheryl` and then second index value (`[1]`) refers to the item with an index value of 1, being her email.

# complex_nested_data_structures
Data structures can very quickly become complex. We refer to data structures inside of other data structures as being *nested*. Let's check out when we have arrays inside of hashes.
```ruby
schools = {
  :charter => {
      :basis => "k-12"
  },
  :private => {
      :brophy => "9-12",
      :xavier => "9-12"
  },
  :public => {
      :desert_vista => "9-12",
      :mountain_pointe => "9-12"
    }
}

schools[:charter]
#=> {:basis => "k-12"}
schools[:private][:brophy]
#=> k-12
schools[:public].keys[1]
#=> mountain_pointe
```
- This might look a bit overwhelming, but if we keep our hashes organized and spaced well, this can be rather easy to follow.
- The `schools` hash contains 3 hashes, `:charter`, `:private`, and `:public`. Each of these hashes contain their own set of keys and values.
- We can access any specific key or value, or even a full hash, by being explicit in our commands, as seen in the example. As you can see, there are a number of ways to access a key or value.
- The bet thing we can do is practice!
- If you feel comfortable, there are a few nested labs in the challenges!

![1](http://i.imgur.com/xxWPrYb.gif)  
Get it? A **nest**...


# APIs
Let's take a slight detour and talk about APIs. An **API** is an **Application Program Interface** and APIs are used to give us access to other program's data on our own web applications. For instance, if you've ever logged in to a website using your Twitter or Facebook account, or if you've seen a Twitter feed on a website that isn't Twitter, that means the API was being used!  

APIs provide data in JSON format, which is JavaScript Object Notation. Before you get a little overwhelmed, just know that JSON data are written in HASHES! Let's look at the Giphy JSON API data you may end up using in the future!  
```ruby
"data": {
    type: "gif",
    id: "FiGiRei2ICzzG",
    slug: "funny-cat-FiGiRei2ICzzG",
    url: "http://giphy.com/gifs/funny-cat-FiGiRei2ICzzG",
    source: "http://tumblr.com",
    rating: "g",
}
```
- Don't get too caught up with the slight syntax differences, but be excited that you can now understand this data structure. This means that many API data structures are now accessible to you!  



## Challenges    
##### [Recipes](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/10_class/03_hash_enumerables/code/01_recipes)
##### [Weather Alert](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/10_class/03_hash_enumerables/code/02_weather_alert)
##### [NYC Open Data](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/10_class/03_hash_enumerables/code/03_nyc_open_data)  

## Navigation  
##### Next class: [Application Build and API's](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/11_class)     
##### Previous lesson: [Intro to Hashes](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/10_class/02_intro_to_hashes) 
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)   



