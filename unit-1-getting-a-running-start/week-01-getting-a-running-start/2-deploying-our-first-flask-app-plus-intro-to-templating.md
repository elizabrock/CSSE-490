# CSSE-490: Advanced Web Development
### Week 1: Getting a Running Start

## Intro to Flask
## +
## Deploying our first Flask app

---

## Intro to Flask

* Flask is a lightweight ("micro") backend web framework
* We're going to use it to learn a lot of concepts

We'll be using Flask for the first time tomorrow in ::Lab 0: Deploying Our First Flask App::

Suggested chapters of the book for Lab 0:

* Ch 1. Installation
* Ch 2. Basic Application Structure
* Ch 17. Deployment

I'm going to talk about the key concepts from each chapter briefly before we move on to talking about Heroku.

---

## Preview of Ch 1. Installation

This chapter is all about installation/setup.

It is also very short- there's no reason not to read it.

* Quick intro to Flask philosophy
* Virtual environments in Python
  * (this is how you avoid package leak across projects)
* pip
  * (this is how you install packages in python)

---

## Preview of Ch 2. Basic Application Structure

<!-- This is where we start getting into the meatier topics of Flask. -->

<!-- You should note that there are multiple ways to structure Flask projects.  This chapter shows us the simplest way.  Later we will look at how to structure bigger applications. -->

* The simplest way to structure a Flask project
* Starting a development (local) server
  * e.g. `FLASK_APP=hello.py flask run --reload`
  * ![output of running flask routes on lab 0](https://github.com/elizabrock/CSSE-490/raw/main/unit-1-getting-a-running-start/week-01-getting-a-running-start/flask%20routes.png)
* Routes
  * This is how Flask translates paths (e.g. `/`) to which function to call (e.g. `index()`)
  * `flask routes` shows you the route table
* Decorators
  * Python magic. In Flask decorators are used to 'tag' functions with their route information
* Request-response cycle
  * This is a big one.  Let's discuss on the next slide!
* Environments - development vs. production
  * Implied but not discussed.  We're going to give it a real slide, too.

---
layout: two-cols
---

### Ch 2 Preview cont.
## Request-Response cycle


| **Browser**                                           | **Flask Server**                                 |
| ----------------------------------------------------- | ------------------------------------------------ |
| Sends a request with request headers and request body |                                                  |
|                                                       | Receives the request                             |
|                                                       | Flask translates the request into Python objects |
|                                   | Your application code creates a response object based on the request |
|                                   | Flask translates your response object into a response to the browser |
| The browser receives the response and processes it    |                                                  |


::right::

You've seen some of this in 280 in the context of the Chrome developer tools:

![](https://github.com/elizabrock/CSSE-490/raw/main/unit-1-getting-a-running-start/week-01-getting-a-running-start/requests%20in%20chrome%20console.png)

---

### Ch 2 Preview cont.
## Environments

When writing back-end code, you are writing one codebase that will run in multiple environments with particular constraints and behaviors:

| Name        | Description | Constraints |
| ----------- | ----------- | ----------- |
| Production  | The 'live' application that your users can access | |
| Development | The local environment | Sometimes accesses live APIs for testing but typically has its own API kays and environments at the API providers  |
| Test        | The environment in which the tests run | SHOULD NOT access any live production APIs and resources |
| Staging     | An 'interim' environment that closely mimics production- Used to test functionality just before it goes into production | Accesses live APIs but needs to have its own API keys and environments at the API providers |

---

## Intro to Heroku

* Heroku is a PaaS (Platform as a Service)
  * PaaS == fancy cloud hosting provider
* the cloud == someone else's computers

## Preview of Ch 17. Deployment

* This chapter covers deploying true production applications
  * What we are deploying tomorrow is a toy, but it is being deployed into a production heroku environment, so we should skim this material now, and read it more deeply later
* Relevant sections for you now:
  * "Cloud Deployment"
  * "The Heroku Platform" (just read through "Creating an application", because you won't be doing the later steps this week)
  * "Testing with Heroku local"
  * "Deploying with git push"

---
layout: two-cols
---

## More about the Heroku workflow

### The workflow for Lab 0 (Deploying Our First Flask App)

<div><a href='//sketchviz.com/@elizabrock/6c9fd114e88e4494828e9f266b2d04cd'><img src='https://sketchviz.com/@elizabrock/6c9fd114e88e4494828e9f266b2d04cd/27c4ea8a2a51b8891a75e0d6cb4d94555dacc58c.sketchy.png' style='max-width: 100%;'></a><br/><span style='font-size: 80%;color:#555;'>Hosted on <a href='//sketchviz.com/' style='color:#555;'>Sketchviz</a></span></div>

::right::

### The workflow for Lab 10 (CI and Automated Deployment with Heroku)

<div><a href='//sketchviz.com/@elizabrock/6281f3bcf7be004cc04a2f413d2bb52e'><img src='https://sketchviz.com/@elizabrock/6281f3bcf7be004cc04a2f413d2bb52e/eeb73dfca6c1489ab6c49bcb9a94aaca947df83c.sketchy.png' style='max-width: 100%;'></a><br/><span style='font-size: 80%;color:#555;'>Hosted on <a href='//sketchviz.com/' style='color:#555;'>Sketchviz</a></span></div>
