# CSSE-490: Advanced Web Development
### Unit 3: Hey Good Lookin'

## Intro to FE Frameworks
## +
## Preparing for Lab 4

(We will loop back to Lab 3 next, but I'm preserving the original numbering)

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
* Svelte (2019) - Avoids the virtual DOM; aims to avoid many of the probelms of React (state management, bulky virtual DOM)


---

### Tuesday's Assignment

On Tuesday, I assigned you all to work through the [Official Intro to React Tutorial](https://reactjs.org/tutorial/tutorial.html).

What did you learn?

* The newer versions of React have lots of bells and whistles
* Why class components instead of functional components?  (No hooks on class components...)

Key Features:

* Components
* JSX (HTML/CSS/JS all smooshed together) <-- Very XMLish
* Fairly object-oriented
  * Less pick-pocketing
  * Composable (TODO: Show an example tomorrow)
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

### Preparing for Lab 4:

Tonight, I would like you to read [Thinking in React](https://reactjs.org/docs/thinking-in-react.html).

This outlines how to break down a mock into components, which is a skill we will be focused on learning through Lab 4.

---

# Friyay?

### Announcements
* Updated schedule now in AirTable
  * I'll be updating Moodle during class today

### ToDo
* Review milestone 4
  * Have you submitted it?
  * Have you made the document link publicly viewable?
* Start lab 4
  * If you have React experience you will probably be done today
  * If you don't have React experience you will need extra time
    * Aim to complete it (or at least get utterly stuck) before class Monday
    * We will review questions on this lab Monday
    * Due date is Tuesday AM

<!-- Vault link: https://rosehulmanprojectvault.org/course-edit/-MkHZP90_iA6H8kAmt35 -->
