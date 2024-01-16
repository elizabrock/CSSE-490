# CSSE-490: Advanced Web Development
### Unit 3: Hey Good Lookin'

## Intro to FE Frameworks
## +
## Starting Lab 4

(We will loop back to add authentication to Lab 3 next [in Lab 5])

---

## Intro to FE Frameworks

FE Frameworks exist to solve long-standing problems with writing complicated web applications:

* Templating: Getting data from an API response (e.g. JSON) and onto the page
* Maintaining State / Virtual DOM: Synchronizing data between the HTML objects and JavaScript objects
* Interactivity: Making a web application feel as smooth and responsive as a native application
* Modularity / Code Reuse: Doing all of that without writing thousands of lines of spaghetti code

---

### FE Philosophies

Different frameworks have different philosophies and strengths depending on when they were created and what problems they were trying to ssolve.


My highly opinionated summary of the progression of FE frameworks:

* jQuery (2006) - simplify DOM interaction
* Handlebars / Mustache  (2009) - Designed to solve the templating problem
* Backbone.js (2010) - MVC framework, event-based, no data-binding <- one of the first widely used ones, IMO
* Angular (2010) - Intended to improve on Backbone with two-way state management
* **React** (2013) - Intended to suck less than Angular; more modular; widely used
* Vue (2014) - Vue never really happened for me, so I have no opinions
* Preact (2018) - Implements the same API as React but focused on being small and fast
* Svelte (2019) - Avoids the virtual DOM; aims to avoid many of the problems of React (state management, bulky virtual DOM)


---

## Preparing for Lab 4:

* Work through the [Official Intro to React Tutorial](https://reactjs.org/tutorial/tutorial.html).
* Then, read [Thinking in React](https://reactjs.org/docs/thinking-in-react.html).
    * This outlines how to break down a mock into components, which is a skill we will be focused on learning through Lab 4.

---
layout: two-cols
---

## Preparing for Lab 4:

What will you learn?

* The newer versions of React have lots of bells and whistles
* Why class components instead of functional components?  (No hooks on class components...)

::right::

Key Features:

* Components
* JSX (HTML/CSS/JS all smooshed together) <-- Very XMLish
* Fairly object-oriented
  * Less pick-pocketing
  * Composable
* It has its own mindset about how to represent logic
  * Very big on how you interact with variables and being precise about mutating things
    * props vs. state
* Output code is not for people to read




<!--

Eliza's notes:

* components
  * XMLishness (are the students familiar with XML?)
    * Perhaps discuss benefits of XML, and contrast it with HTML1/XHTML/HTML5
  * syntactic sugar on top of createelement, etc
  * composable
*
*

-->
---
layout: two-cols
---

## Project Milestones, updated


* M1: ✓ Ideation
* M2: ✓ Picking Teams
* M3: Plan your application
    * Pt 1:
        * How will users interact with your application?  (Basic wireframes are required, high fidelity mocks are NOT required)
    * Pt 2:
        * What APIs will you need?
        * How will you structure your application?
        * How will you store and structure your data?
* M4 - MN-1 (Weeks 7/8/9): Weekly sprints with progress reports due the following Monday
* MN: Live presentations Thur/Fri of Week 10


::right::

## M3: Project Plan Pt 1:
* How will users interact with your application?
  * 1 paragraph explaining the premise of your app
  * Basic outline of features <!-- (feetures in my example app) -->
* Basic wireframes (high fidelity mocks are NOT required)
  * What do I mean by basic?  <br>Example: [SavingsMultiplied Balsamiq mockups](https://drive.google.com/file/d/1nfko8IFTkOMCcTQbqGyH2ldMPV6Ou40H/view?usp=sharing)

---

# Plan for Thorsday thru Tuesday

* Either finish or get stuck on lab 4 by Thursday AM
  * If you have React experience you will probably be done today
  * If you don't have React experience you will need extra time
    * Aim to complete it (or at least get utterly stuck) before class Thursday
    * We will review questions on this lab Thursday
    * Due date is Friday AM
* Complete Project Plan Pt 1 by Monday (reminder: **_basic_** wireframes)
* Plan to know some details about your application by Tuesday:
  * What APIs will you need?
  * How will you structure your application?
  * How will you store and structure your data?

In Class: Thursday = Talk lab 4, talk projects more; Friday = loop back to implementing more things in our full stack TODO app

---

# Friyay?

**This slide is not yet finalized.  It is a draft for Friday**

### Goal Announcements
* Updated schedule in Moodle
* Lab 5 available to start

## ToDo
* Review milestone 4
  * Have you submitted it?
  * Have you made the document link publicly viewable?

<!-- Vault link: https://rosehulmanprojectvault.org/course-edit/-MkHZP90_iA6H8kAmt35 -->
