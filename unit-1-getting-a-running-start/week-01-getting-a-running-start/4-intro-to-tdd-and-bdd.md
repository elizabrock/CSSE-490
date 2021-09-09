# CSSE-490: Advanced Web Development
### Week 1: Getting a Running Start

## Intro to Lab 1
## +
## Intro to Testing

---

## Lab 1 brings in an expanded application structure

<br>
<pre style="margin-left: 1em;">
brocker-lab-1/
├─ app/
│  ├─ simple_photo_processor.py
│  ├─ static/
│  │  ├─ css/
│  │     ├─ main.css
│  │  ├─ images/
│  │     ├─ favicon.png
│  │  ├─ js/
│  │     ├─ main.js
│  ├─ templates/
│  │  ├─ index.html
│  │  ├─ layout.html
│  │  ├─ upload.html
├─ tests/
│  ├─ test_simple_photo_processor.py
      ^---- Tests!!!! We have tests!
</pre>


<br>
<br>

## ..and Tests!

---
layout: two-cols
---

## Eliza's Testing Philosophy

* Test-first, never test-last
  * The only exception is throw-away spike code
  * But only if you actually throw it away!
* Top down testing
* Each layer should be a little more thorough than the last

## As applied to Lab 1:

* Your mission is to set up the Lab
* Run the tests
* And only implement what the tests tell you is necessary

(If you want to add more functionality, by all means do so, but you must also add tests to go with it!)



::right::
<a href='//sketchviz.com/@elizabrock/91fc6bc5e473e4067fd94261683bfe0b'><img src='https://sketchviz.com/@elizabrock/91fc6bc5e473e4067fd94261683bfe0b/81d7753f0e5a29d7d51bb0546e395addc15cdb3e.sketchy.png' style='max-width: 100%; max-height: 28em;'></a>
