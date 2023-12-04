# CSSE-490: Advanced Web Development

## Week 2: Ruby Lang and perhaps more Project Brainstorming

---

## Ruby Lang
### Symbols


`:food` vs. `"food"`


| **Symbol**  |  **Strings** |
|---|---|
| "it is what it is"  | Basically array of characters  |
| commonly used as keys | |
| only 1 symbol `:food` | `"food"` and `"food"` are two differeny objects |

<!--

Symbols

- immutable
- only a single object for each “string”


If you were going to implement ruby symbols in python, how would you do it?

Constant time comparison

Comparing regular strings is like eating an elephant - you  have to eat it one bite at a time.  Not so with symbols- Why?


-->
### Docs:

https://docs.railsbridge.org/ruby/symbols

https://www.rubyguides.com/2018/02/ruby-symbols/


---

## Ruby Lang
### Enumerable

`[1, 2, 3].each {|n| ... }`

https://ruby-doc.org/core-3.0.2/Enumerable.html

### Ranges

`(0...5)` vs. `(0..5)`

#### Ranges can be infinite


```
(1..Float::INFINITY).lazy.select {|x| x.odd?}.select{|y| y > 5 }.first(8).inspect
```

<!--
- wtf is a range?
- What's this laziness idea?
- Select with blocks is neat
- Inspect does what you'd think, but you could pp instead

wtf is lazy? Let's read about it! https://ruby-doc.org/core-3.0.2/Enumerable.html#method-i-lazy
-->


---

## Ruby Lang

### What else do you want to learn more about in Ruby?


* blocks and lambdas! (scoping differences? execution differences?)
* method signatures

### What is unique?

* open classes
* Skipping parentheses



---
src: ./project.md
---

---

## For Tomorrow:

Read about Sinatra?
