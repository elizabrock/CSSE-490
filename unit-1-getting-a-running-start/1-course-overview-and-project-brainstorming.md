# CSSE-490: Advanced Web Development

## Week 0: Course Overview and Project Brainstorming

---

## Course Overview
### Course Goal

My vision is that this course will eventually earn a permanent billet as CSSE-380.

* a stepping stone between CSSE-280 and CSSE-4XX (Senior Project).
* focus on the core skills that students will need to successfully apply their 280 foundations to a full-fledged senior project that has the potential to live on in production past their graduation

## What are those core skills?
<!-- See next slide for skills! -->
## What will you have to learn to fulfill that goal?

---

# Core skills for production projects:

1.  The application does something meaningful
	1. For this course, that probably means integrating multiple APIs or doing some meaningful server-side data processing
	2. Payment processing would be *huge* here
2.  APIs are produced according to REST principles
	1. Files are structured predictably
	2. Methods are short
	3. APIs are documented
3. Automated Tests
	1. Tests are written in a top-down BDD perspective so that use cases are apparent to future developers
	2. Tests cover the majority of the lines of code so that future developers can modify them with confidence
4. Deployed
	1. Automated / Semi-automated deployment
	2. All secrets are properly stored in secret stores, rather than in code

---

## About Me

## Professor Marcum

<div class="grid grid-cols-2 gap-4">
<div>

### Professional Experience

* Rose-Hulman Alum
* 18 years of web application development
* Startups
  * eCommerce
  * DTC
  * B2B
  * Payment Processing
  * etc.
* Consulting
* Teaching
* Open Source

</div>
<div>

<!-- ### Rose-Hulman Experience

* Rose-Hulman Alum
* Prev. Board of Trustees
* Prev. CSSE Board of Advisors
* Now… Visiting Professor :) -->

### LOTS of web technologies over the years
* In the beginning: XSLT, XPath, XML, Javascript, PHP, HTML4, XHTML, CSS2
* Way back: Java, .NET, Python, jQuery, MySQL, Mongo
* Recently: Ruby, Rails, HTML5, CSS3, TDD/BDD, PostgreSQL, Haml, Sass, Sinatra, Jekyll, JSON, MVC, REST, Web Services, etc.
* This course: Python, Flask, React, etc

</div>
</div>


---

## About Me
### Remote Work

I've been a remote worker for 7+ years.  Being remote has brought a lot of flexibility and opportunity to my life.

What you've experienced with being forced into online learning during the pandemic wasn't been the greatest experience for most of you.

I hope that this class will change how you feel about collaborating and working remotely.

<!-- To that end, ask how they collaborate -->

---

## Remote Work Practices

What does it take to be a successful remote worker?

* Being present
  * This means _actually paying attention and **participating**_ during virtual meetings
  * -- Easier said than done!
* Being proactive
  * When you are remote you can't rely on your coworkers picking up context clues-  You have to be proactive in bringing up issues
* Managing your own time and tasks
  * You have to manage your own attention without the threat a manager wandering by to ask you why you're watching cartoons in the middle of the workday

In short:  You have to act like a senior engineer instead of junior engineer ;)

### Next up: Your remote work preferences

---

## Your Remote Work Preferences


**Problem: We need to be able to communicate easily as team (err... class)**

### Requirements:

* I want you to be able to ask questions publicly and get answers from both myself and peers
* I want the experience of using our communication software to not utterly suck

Obv. a hard problem to solve.

### Options:

1. Teams?
7. Carrier Pigeon?

---

## Introductions

1. Name
2. Moving Hobby
3. Making Hobby

---

## Course Overview
### Course Format

* lecture 3x/week most weeks
* 11 labs (9 req, 2 optional)
* project (team recommended but optional)

### Grade %s

* 60% - Required Labs (Labs 0-8)
* 30% - Project
* 10% - Participation


Additionally, there are 2 bonus labs (Labs 9 and 10) that you can optionally complete in order to boost your lab score

---

## Course Overview
### Late Policy

24 hours free IFF you email me before the lab is overdue

### Participation Policy

This is a 490- you get out of it what you put into it!

Full participation means showing up to class on time, with cameras on*, and being a part of the discussion.

* _I make exceptions to the camera expectation for situations where you have low-bandwidth.  However, I think that having cameras on is a reasonable expectation given that I would be able to see your smiling (or frowning) face in a live classroom.  Seeing your reactions as we talk is a big part of how I can tell whether I'm pacing the material appropriately, etc._

---

## Course Overview
### Course Outline / Schedule

<iframe class="airtable-embed" src="https://airtable.com/embed/appxjtCsxHvVwjugD/shrCcyjo8aTurwSZf?backgroundColor=yellow&viewControls=on" frameborder="0" onmousewheel="" width="100%" height="450" style="background: transparent; border: 1px solid #ccc;"></iframe>

## Course Details

Sinatra
React
Automated Testing
Big Project

---

## Course Details

### Why Sinatra?

Simple, prepares you for __understanding__ bigger frameworks

### Why React?

Most popular, most likely to be useful to you in the near-term

### Why automated testing?

It's the only way to create reliable software that lasts.

### Why a final project?

Because that's the whole point of learning web development - Building something awesome on the internet, and doing it well!  _(more on this next)_


---

## The Project

The #1 project requirement:  Make something damn cool!

The sky is the limit for project ideas. However, I will be helping you limit the initial scope of your projects to ensure that you are able to create something cool in the time allotted.

---

## Project Cadence

We will develop this project in a series of milestones and sprints.  We will start project ideation in Week 0, but we won't start actual coding until midway through the term.  Weeks 8-10 will be lighter on class materials, with labs that are either smaller or entirely optional, so you will have time to focus on developing your project.

* M1: Ideation
* M2: Settling on an idea and a team (optional, up to 2 students)
* M3 (likely splitting this into multiple milestones): Plan your application
    * How will users interact with your application?  (Basic wireframes are required, high fidelity mocks are NOT required)
    * What APIs will you need?
    * How will you structure your application?
    * How will you store and structure your data?
* M4 - MN-1: Weekly sprints with progress reports
* MN: Live presentations during our finals timeslot

---

## Project Requirements

* **#1 project requirement: Must be something you (or someone you care about) deems genuinely cool and useful**
  * Great: An app that combines the APIs for Spotify, a song lyrics service, and a sentiment analysis service to provide sentiment analysis of Spotify playlists or Spotify playlist history
  * Good: A service that emails daily to ask how your day went, then emails you a once-weekly summary, perhaps using sentiment analysis and timestamps to reveal insights about your week
  * Good: A pictographic cookbook for my little sister that can't read yet
  * Bad: A simple CRUD app to track the movies I've watched
* **Must be a web application**
  * (this does not imply the requirement for a front-end-  see the example above about a service that interacts with the user solely via. email)
* **Must be accessible on the public internet**
* **Can be written in any combination of web technologies you wish**
  * It does NOT have to use Flask or React.  We are using these tools in class to learn concepts, not to prescribe technological solutions

---



## Project Brainstorming

### Let's come up with at least 10 good ideas before we move on.  In all likelihood, we'll end up working on project brainstorming on Friday, as well.

1. An App For Tracking Presser Feet for Sewing

<!-- 1. An app that combines the APIs for Spotify, a song lyrics service, and a sentiment analysis service to provide sentiment analysis of Spotify playlists or Spotify playlist history
2. A replacement for Teams
3. A web service that connects to spending APIs (similar to Mint, maybe using OFX format
4. An app that helps track game sales/promotions across different gaming platforms
5. Interactive Novel/Game
6. Build-a-bear online planner
7. Web extension for renaming demo files from Steam
8. goroawase generator (coolness confirmed; use case pending)
9. Extend RoseNav to let people navigate inside of buildings
10. Extend the Schedule planner application to use real registrar data
11. Upgrade maker club sign in
12. Cross-stitch supply app to calculate project costs
13. Random Recipe Speedrun Contest App
14. Plan To Quilt online
15. Managing the fishing supply business
16. Waze for commuter parking -->

---

## For Tomorrow:

Let's see what Moodle tells us to do!
