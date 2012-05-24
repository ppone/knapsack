Knapsack
========

Implementation of the knapsack problem in various languages based on this pseduo code.

Create Our Buckets
==================

```
v = []  
v << Bucket.new(7,3) 
v << Bucket.new(1,4) 
v << Bucket.new(5,3)
v => [#<Bucket:0x007f81fb110380 @s=3, @w=7>, #<Bucket:0x007f81fb10af48 @s=4, @w=1>, #<Bucket:0x007f81fb1054d0 @s=3, @w=5>]
```

Find Our Solutions
==================
```
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

