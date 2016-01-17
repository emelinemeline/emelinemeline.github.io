---
layout: post
title: Resources for Building with Github Pages
comments: true
---
I don't really know how to program well. I would say I'm a very intrepid Googler more than anything else.

But I figured I should have a personal website, especially so I could share some of my Processing sketches. I don't remember how I ran across Github Pages, but the level of
both flexibility and simplicity made it seem like the best bet for what I wanted.

Here are some of the resources I used to go from nothing to this:

###Github Pages and Jekyll
 * [Creating and Hosting a Personal Site on GitHub](http://jmcglone.com/guides/github-pages/) - I thought this was a great tutorial to get a grasp on the very basics of 
 of how Github Pages works. This was especially helpful considering I didn't actually know anything about HTML or CSS.
 * [How I Created a Beautiful and Minimal Blog Using Jekyll, Github Pages, and poole](http://joshualande.com/jekyll-github-pages-poole/) - I decided to migrate over to Poole
  because I'm really not super interested in HTML or CSS enough to fiddle with it infinitely to get what I want. This was a super useful post on using Poole and then some
  upgrades you can make to the vanilla template.
 * [Here's](https://github.com/jekyll/jekyll/wiki/Sites) a list of a bunch of websites using Jekyll. All have their source code linked. Good inspiration to look through other
 people's sites and code.
 * [How to point a domain on Google Domains to GitHub pages](http://www.curtismlarson.com/blog/2015/04/12/github-pages-google-domains/) - Simple and to the point post. 
 * [Show Post Exerpts on Poole Blog Homepage](http://antrikshy.com/blog/show-post-excerpts-on-poole-blog-homepage/) - Another excellent to-the-point post that works.

###Processing.js
I will probably write up a more detailed post on what exactly I did to get Processingjs to work with Github Pages, but here are some links to get started.
 * [Processing.js Quick Start - Processing Developer Edition](http://processingjs.org/articles/p5QuickStart.html)
 * [Source code for the Processing.js](websitehttps://github.com/processing-js/processing-js.github.io) - I really liked looking at the Processingjs website for inspiration/help!
 * [Some notes on difficult to debug Processing.js errors](http://go.yuri.at/some-notes-on-difficult-to-debug-processing-js-errors/) - I spent an 
 unreasonable amount of time trying to get my banner to work. In the end, the problem was that I used "size" to define the size of my dots, but size()
 is also a Processing function used to define the size of the window. So that was not really allowed because . 
 For the longest time, I also didn't realize that Processing libraries don't work...