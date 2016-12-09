# Swift web hybrid template

## Version 2.0.0

![screenshot of base skeleton](http://f.cl.ly/items/1u171M2v2i2B411V3i2B/Screen%20Shot%202015-11-09%20at%209.11.47%20PM.png)

## What is this?
This is a skeleton of an application written in the Swift programming language that uses HTML/CSS/JS for its view layer. It has the ability to communicate between JavaScript and native Swift code.

## Why?
I'm a front end web developer, but I also like native code. I really like building UI in what I'm comfortable with, but realize that JavaScript won't be able to do everything for me. By combining both Swift, and front end web code, I can write what I'm comfortable with, but also have the ability to call to native, more powerful functions when I need some more heavy lifting done.

This has been done through various methods such as [NW.js](http://nwjs.io/), and [electron](http://electron.atom.io/). Both of these allow you to perform native functionality to some extent, but also come at a price. Embedded V8 solutions like the two previously mentioned are extremely large in file size. This skeleton comes in at around `6.2MB` compiled, whereas `NW.js` and `electron` can be several hundred for a simple app. I still think `NW.js` and `electron` have a lot to offer, and most certainly make it easier for someone purely with web experience to do more, but this may be a better solution for you. It should also be noted that using this skeleton creates an OS X only application, whereas the other two can be used to create a multi-platform application.

### changes in version 2.0.0
Updated to Swift 3
