# avengers
Define an `Avenger` class using the RSpec descriptions. Pay close attention to what is passed in upon instantation.  

![1](http://i.imgur.com/HMXLBBa.gif)  

Note: The `let` keyword in RSpec allows an object to be defined and is instantiated when called by the RSpec test. For example:
```ruby
let(:student) {Coder.new("Albert Einstien")}
```
- `:student` is the variable storing the object
- `Coder` is the class name
-`.new` is the method instantiating the new `Coder` object.  
- `"Albert Einstein"` is the attribute that must be passed in upon initialization (this means the object was defined with a `name` attribute that had to be passed in upon initialization)

`student` will be passed in as an object argument for the RSpec tests. There can be multiple `let` keywords pre-defining multiple objects in an RSpec file.  

## Navigation  
##### Next challenge: [Nemo and Friends](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/06_class/01_object_orientation_pt1/code/02_nemo_and_friends)
##### Back to lesson: [Intro to OOP Pt. 1](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/06_class/01_object_orientation_pt1)    