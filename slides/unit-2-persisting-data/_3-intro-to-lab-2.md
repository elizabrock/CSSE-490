# CSSE-490: Advanced Web Development
### Week 2: Databases as they pertain to Web Applications

## Intro to Lab 2
## +
## Review Test Driven Development

---

# Lab 2: Classic simple to-do app without authentication

"If you can dream it, you can TODO it"

## Learning Goals / Objectives:
* Apply your basic database skills to building a super simple TODO app
* Learn TDD by using tests to guide your implementation


[Instructions](https://github.com/elizabrock/CSSE-490/blob/main/labs/lab-02-classic-simple-todo-app-without-authentication.md)

---

## Week 3 is turning into a Lab Week:

* **Monday**:
  * Get up and running on Lab 2
    * Postgres will be an unavoidable challenge for us to work through today
  * Walk yourselves through TDD of the Create and Read portions of the simple TODO app
* **Tuesday**:
  * Rebase off of my repository to get the tests for Update and Delete
  * Implement Update and Delete
  * Turn in Lab 2
* **Thursday**:
  * Discuss Lab 2
  * Learn about Authentication
* **Friday**:
  * Lab 3: Adding authentication to Lab 2
    * I will provide my Lab 2 solution as a starting point for Lab 3

Schedule subject to change depending on how many issues we run into.

---

## What's New in Lab Two?

* Headless Chrome
* Selenium Base
* REST?

---
layout: two-cols
---

## Eliza's Testing Philosophy

* Test-first, never test-last
  * The only exception is throw-away spike code
  * But only if you actually throw it away!
* Top down testing
* Each layer should be a little more thorough than the last
* **Your tests shouldn't care about your implementation**

::right::

<a href='//sketchviz.com/@elizabrock/91fc6bc5e473e4067fd94261683bfe0b'><img src='https://sketchviz.com/@elizabrock/91fc6bc5e473e4067fd94261683bfe0b/d543ef6880bc12b36a83afe6b85a42301c2fccae.sketchy.png' style='max-width: 100%; max-height: 28em;'></a>


---
layout: two-cols
---

## Eliza's Testing Philosophy
## as applied to [Lab 2](https://github.com/elizabrock/CSSE-490/blob/main/labs/lab-02-classic-simple-todo-app-without-authentication.md):

* All tests are currently marked "skip" and labeled with Step numbers
* Set up the lab
* Unskip the test labeled "Step 1" and run the tests
* Let the test error messages lead you to what needs to be implemented
  * Note that I have included lots of notes in the comments, as well as commented out chunks of functionality for you to add in

::right::

<a href='//sketchviz.com/@elizabrock/91fc6bc5e473e4067fd94261683bfe0b'><img src='https://sketchviz.com/@elizabrock/91fc6bc5e473e4067fd94261683bfe0b/d543ef6880bc12b36a83afe6b85a42301c2fccae.sketchy.png' style='max-width: 100%; max-height: 28em;'></a>

---

## Lab 2, Part 2


* A new set of tests has been pushed up
  * You will need to [sync your fork](https://docs.github.com/en/github/collaborating-with-pull-requests/working-with-forks/syncing-a-fork)
* The new tests assume that you will follow a RESTful
