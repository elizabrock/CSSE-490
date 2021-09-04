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
  * ![output of running flask routes on lab 0](/flask routes.png)
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

### Ch 2 Preview cont.
## Request-Response cycle

You've seen some of this in 280 in the context of the

---

### Ch 2 Preview cont.
## Environments

## Preview of Ch 17. Deployment

---

## Intro to Heroku

* Heroku is a PaaS (Platform as a Service)

[Put a visual of the git workflow for deployment here]
[Perhaps also link to a resource for working with multiple remotes]
[Also diagram/visualize for them how automated testing/CI/CD acts as a gatekeeper to keep bad code from production]
