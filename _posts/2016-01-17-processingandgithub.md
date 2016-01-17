---
layout: post
title: Getting Processing.js to Work with Github Pages
comments: true
---

Here's a super quick tutorial on setting up Processingjs with a Github Pages site!


I sunk an embarassing amount of time trying to get this to work myself, so hopefully someone out there on the internet will find this useful.

<!--more-->

## Grab a copy of Processing.js
Link on the Processing.js download link [here](http://processingjs.org/download/).
Link to their Gibhub repo [here](https://github.com/processing-js/processing-js/) as well.


## Include that file in your Github Pages repo
Mine lives in the root directory.
![Root directory of my Github](/assets/images/pjs1.png)

You can include it wherever you want, but just take note of the path to which you are saving.


## Include Processing.js as a script
You want to have this line of code included in the header of any pages that have a Processing sketch:
{% highlight html %}
<script src="processing-1.0.0.min.js"></script>
{% endhighlight %}

I just threw it into my head.html file, in the /_includes/ folder. You can check that out the structure of that file [here](https://github.com/emelinemeline/emelinemeline.github.io/blob/master/_includes/head.html).


## Commit your sketches to your Pages repo
I have a sketches folder in my root directory. Again, it doesn't really matter how structure your folders, just take note of the filepath.


## Put a canvas where you want your sketch to show up
Put this line of code in your page wherever you want the sketch to appear:
{% highlight html %}
<canvas data-processing-sources="/sketches/example/example.pde"></canvas>
{% endhighlight %}

If you need to include multiple files, just separate the names with spaces.


## Notes on troubleshooting
I found it difficult to debug Processing.js because I don't really know enough about Javascipt, and there's not much feedback available other than your sketch not working.
I relied on [this post, "Some notes on difficult to debug Processing.js errors"](http://go.yuri.at/some-notes-on-difficult-to-debug-processing-js-errors/) for help.


Two things that specifically gave me a lot of grief:

#### You can't use Processing libraries with Processing.js
While this makes sense, it took me a while to understand this concept.... You can use libraries that are specificaly written for Javascript, but most Processing libraries are written for Java.


#### Javascript is loosely typed
When making my banner, I had a variable named "size" to define how big each dot/circle appeared. While this works fine in the Processing IDE, Javascript seemed super unhappy
 that I had named something "size" when "size()" is also a function that defines the size of the window/sketch. From what I've read, the reason is because Javascript is loosely typed, 
 which means that you do not explicity declare the object types of variables. I do not want to disclose the amount of time I spent figuring that one out....

 
## Further Resources
Here are some other resources that were super helpful to me:
##### [Processing.js Quick Start - Processing Developer Edition](http://processingjs.org/articles/p5QuickStart.html)

##### [Source code for the Processing.js website](websitehttps://github.com/processing-js/processing-js.github.io) - I really liked looking at the Processingjs website for inspiration/help!