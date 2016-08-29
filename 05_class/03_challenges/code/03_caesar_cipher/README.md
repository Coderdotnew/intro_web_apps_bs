# caesar_cipher
Let's build a program that can encrypt codes! The Caesar Cipher, also known as the Shift Ciper, is one of the most widely used forms of encryption. This encryption method works by defining a *numeric shift* that determines how many letters up or down the alphabet you hope to move. This shifts the entire alphabet a certain number of letters over and thus renders your message encoded!  

![1](http://i.imgur.com/Vrj373K.png)  

### The Caesar Cipher
The Caesar cipher takes in a number as a 'key' - let's call it `k` for key - and shifts the letters in the message `k` places away alphabetically. For example,  if k = 3, the letter 'a' would shift three places to 'd', 'b' would shift three places to 'e', and so on. If you get to the end of alphabet and you need to keep shifting, you'd start at the end. So the letter 'x' shifted three places would be: 'x' => 'y' => 'z' => 'a'!

Changing the key would change the output, as it is a different number of places that you are shifting the alphabet.

### Challenge: Encrypt
Write a method `caesar_encrypt` that takes two arguments, a key (number you wish to shift) and a phrase (string). Using the key, return the shifted phrase.

For example, calling `caesar_encrypt(3, "Ruby")` will return `"Uxeb"`.

##### Hint: you may need to look up how to generate the numerical value of a letter in Ruby...

### Resources
+ How the Caesar Cipher was Cracked: https://www.khanacademy.org/computing/computer-science/cryptography/crypt/v/caesar-cipher

## Navigation  
##### Next class: [Object-Oriented Programming I](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/06_class)     
##### Back to lesson: [Challenges](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/05_class/03_challenges)   