Knapsack
========

Implementation of the knapsack problem in various languages (currently Ruby), which will print out all the solutions.

![screenshot](http://image.made-in-china.com/4f0j00NvPaQEmnbpcW/Knapsack.jpg)

Create Our Buckets
==================

```Ruby
v = []  
v << Bucket.new(7,3) 
v << Bucket.new(1,4) 
v << Bucket.new(5,3)
v => [#<Bucket:0x007f81fb110380 @s=3, @w=7>, #<Bucket:0x007f81fb10af48 @s=4, @w=1>, #<Bucket:0x007f81fb1054d0 @s=3, @w=5>]
```

Find Our Solutions
==================
```Ruby
knapsack(v,v.size,4)
"max size = 7"
"Solution = [1]"
knapsack(v,v.size,6)
"max size = 12"
"Solution = [1, 3]"
knapsack(v,v.size,23)
"max size = 13"
"Solution = [1, 2, 3]"
```
Pseudocode
==================
![screenshot](https://github.com/ppone/knapsack/raw/master/knapsack.png)


LICENSE
=================
The MIT License (MIT)

Copyright (c) 2014 Parag Patel

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
