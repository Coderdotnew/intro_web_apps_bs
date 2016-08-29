# Binary Converter

The number system we use is called the `decimal number system`. We say it is `base 10` because it uses 10 digits from 0 to 9. But what happens when we count past 9? We don't have a single symbol for 10, so you have to add 1 in a new column and then start over again at 0 in the ones place.

`0, 1, 2, 3, 4, 5, 6, 7, 8, 9...now start over by adding a new column (the tens place) worth ten times the first column (the ones place) 10, 11, 12...`

Other systems use different bases. `Binary`, for example, is `base 2`. Because of this, we only have two digits we count with: 0 and 1. Let's see how that works. You count 0, 1, then you have to start over at zero and add a column! The next column is worth twice the value of the first column. Since binary is a base 2 system, each digit represents a power of 2, with the rightmost digit representing 2<sup>0</sup> (0), the next representing 2<sup>1</sup> (2), then 2<sup>2</sup> (4), 2<sup>3</sup> (8) and so on.

| Decimal | Binary | Explanation |
| ------- | ------ | ----------- |
| 0       | 0      | 0 in the ones place |
| 1       | 1      | 1 in the ones place |
| 2       | 10     | 0 in the ones place + 1 in the twos place (0+1) |
| 3       | 11     | 1 in the ones place + 1 in the twos place (1+2)|
| 4       | 100    | 0 in the ones place + 0 in the twos place + 1 in the fours place (0+0+4) |
| 5       | 101    | 1 in the ones place + 0 in the twos place + 1 in the fours place (1+0+4) |
| 6       | 110    | 0 in the ones place + 1 in the twos place + 1 in the fours place (0+2+4) |
| 7       | 111    | 1 in the ones place + 1 in the twos place + 1 in the fours place (1+2+4) |
| 8       | 1000   | 0 in the ones place + 0 in the twos place + 0 in the fours place + 0 in the eights (0+0+0+8) |

### Your Challenge
+ Create a method called `decimal_to_binary` that converts a decimal number to its binary equivalent. Your method should take in a decimal as an argument and output it as binary.

+ Create a method called `binary_to_decimal` that converts a binary number to its decimal equivalent. Your program should take in a binary number and output it as a decimal.

Write your code in the `binary.rb` file. You should be able to successfully convert the following decimal numbers to binary and binary numbers to decimal:

| Decimal | Binary     | 
| ------- | ---------- | 
| 1       | 1          | 
| 2       | 10         | 
| 13      | 1101       | 
| 34      | 100010     | 
| 100     | 110010     | 
| 526     | 1000001110 | 


## Navigation  
##### Next class: [Arrays](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/05_class)  
##### Back to lesson: [Challenges](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/04_class/03_challenges)   