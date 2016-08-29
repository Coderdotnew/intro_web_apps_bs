# factorials
Time to use programming to solve some higher level math challenges. A *factorial* is calculated by multiplying a number by itself and subtract 1 each loop until you reach 1.  
- For example: 5 factorial is 5 * 4 * 3 * 2 * 1 = 120  
- This is also written as 5! = 120

## hints
Hint 1: Be careful you provide ruby with instructions that if the factorial reaches 1, it stops multiplying. If the loop continues to subtract 1, it will multiply forever! 

Hint 2: **Recursion** is when a method calls itself if you want the method to repeat an action with varying instructions. 
- Be careful that if you call the `factorial` method in itself, you include instructions to not create an infinitely repeating loop! 

The following is an example of an infinitely repeating loop:
```ruby
def infinite_loop
  puts "This is infinite recursion"
  infinite_loop
end
infinite_loop
```
- In this method, the first set of instructions is to print `"This is infinite recursion"` to the screen.  
- However, immediately after, the method calls itself, and will repeat this forever because there are no instructions to stop!  
- If you are brave, open up IRB (command: `irb`) and copy and paste the above code and press enter...

## Navigation  
##### Next challenge: [Binary Conversion](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/04_class/03_challenges/code/02_binary_conversion)  
##### Back to lesson: [Challenges](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/04_class/03_challenges)   