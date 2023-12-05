# CSSE-490: Advanced Web Development
### Week 1: Getting a Running Start

## Intro to Sinatra
## +
## Deploying our first Sinatra app

---

## Intro to Sinatra

* Sinatra is a lightweight ("micro") backend web framework
* We're going to use it to learn a lot of concepts

We'll be using Sinatra for the first time today in ::Lab 1: Deploying Our First Sinatra App::

I'm going to go over some key concepts before you jump into the lab

* Installation
* Basic Application Structure
* Deployment / Heroku

---

## Installation


* Quick intro to Sinatra philosophy
* `gem`
  * (this is how you install pacakages in ruby)
* `bundler`
  * (this is how you manage project dependencies in ruby)

---
layout: two-cols
---

## Basic Application Structure

<!-- This is where we start getting into the meatier topics of Sinatra. -->

<!-- You should note that there are multiple ways to structure Sinatra projects.  This chapter shows us the simplest way.  Later we will look at how to structure bigger applications. -->

* The simplest way to structure a Sinatra project
* Starting a development (local) server
  * e.g. `ruby sinatra_app.rb`
* Routes
  * Defined by HTTP method (e.g. `GET`) and path (e.g. `/`) along with a block that will be executed when that URL is hit:
* Request-response cycle
  * This is a big one.  Let's discuss on the next slide!
::right::

---
layout: two-cols
---

```
get '/' do
  "<h1>Hello World! I'm [Your Name Goes Here]!</h1>"
end
```

## Request-Response cycle


| **Browser**                                           | **Sinatra Server**                                 |
| ----------------------------------------------------- | ------------------------------------------------ |
| Sends a request with request headers and request body |                                                  |
|                                                       | Receives the request                             |
|                                                       | Sinatra translates the request into Ruby objects |
|                                   | Your application code creates a response object based on the request |
|                                   | Sinatra translates your response object into a response to the browser |
| The browser receives the response and processes it    |                                                  |


**Note:** For today's lab, we're doing the bare minimum and directly returning a string.

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


* What we are deploying today is a toy that doesn't have explicit environments, but it is being deployed into a production heroku environment, so we should skim this material now, and read it more deeply later

---

## Intro to Heroku

* Heroku is a PaaS (Platform as a Service)
  * PaaS == fancy cloud hosting provider
* the cloud == someone else's computers

<!--
## Preview of Ch 17. Deployment

* This chapter covers deploying true production applications
  * What we are deploying today is a toy, but it is being deployed into a production heroku environment, so we should skim this material now, and read it more deeply later
* Relevant sections for you now:
  * "Cloud Deployment"
  * "The Heroku Platform" (just read through "Creating an application", because you won't be doing the later steps this week)
  * "Testing with Heroku local"
  * "Deploying with git push"
-->
---
layout: two-cols
---

## More about the Heroku workflow

### The workflow for Lab 0 (Deploying Our First Sinatra App)

<div><a href='//sketchviz.com/@elizabrock/6c9fd114e88e4494828e9f266b2d04cd'><img src='https://sketchviz.com/@elizabrock/6c9fd114e88e4494828e9f266b2d04cd/27c4ea8a2a51b8891a75e0d6cb4d94555dacc58c.sketchy.png' style='max-width: 100%;'></a><br/><span style='font-size: 80%;color:#555;'>Hosted on <a href='//sketchviz.com/' style='color:#555;'>Sketchviz</a></span></div>

::right::

### The workflow for Lab 10 (CI and Automated Deployment with Heroku)

<div><a href='//sketchviz.com/@elizabrock/6281f3bcf7be004cc04a2f413d2bb52e'><img src='https://sketchviz.com/@elizabrock/6281f3bcf7be004cc04a2f413d2bb52e/eeb73dfca6c1489ab6c49bcb9a94aaca947df83c.sketchy.png' style='max-width: 100%;'></a><br/><span style='font-size: 80%;color:#555;'>Hosted on <a href='//sketchviz.com/' style='color:#555;'>Sketchviz</a></span></div>


---

## 490 Hopes and Dreams


<!--
* Webpack
* Typescript
* Svelte
* CI/CD
* Docker (maybe add into Week 10?)
* Webscale
* James White guest lecture?
* WebGL
-->
