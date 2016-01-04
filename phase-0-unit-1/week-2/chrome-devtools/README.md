[Week 2 Home](../)

# U1.W2: Chrome DevTools and CSS Positioning

## Learning Competencies
- Manipulate a website's HTML and CSS elements using the Chrome DevTools inspector
- Describe how to resize elements on the DOM using CSS
- Identify differences between and use Absolute, Fixed, Static, and Relative positioning
- Describe the differences between Margin, Border, and Padding

## Summary
In this challenge, you'll be diving into Chrome DevTools and playing with CSS positioning. Inside the DevTools inspector window is an inner world of data that is communicated between the browser and server. These tools are invaluable for you as a developer and getting comfortable with them will help optimize your HTML and CSS editing, JavaScript debugging, and overall site performance. For the purposes of this challenge, we'll focus primarily on real-time HTML and CSS positioning.

## Releases

## Release 0: Research the DOM
Read/Watch both of the following resources to get some background on the DOM (Document Object Model) before diving into the challenge.
- [Skillcrush's introduction to the DOM](http://skillcrush.com/2012/10/17/dom-document-object-model/)
- [Introduction to the DOM (Video)](https://www.youtube.com/watch?v=-0ZcldkGlt8)

## Release 1: Skim
First, read through Release 2 below to see what we're going to ask you to do in Chrome Dev Tools. Then, you can either jump in if you want to just try it out, or skim through Google Chrome's Introduction on [Editing Styles And The DOM](https://developer.chrome.com/devtools/docs/dom-and-styles) to get a brief intro.

## Release 2: Practice
Now open the [css-positioning.html](css-positioning.html) file (from your local repository on your computer) in Google Chrome.  For this release you will use CSS in DevTools to change the position and size of each of the boxes according to the exercise instructions. There are different ways to do each exercise. Using Dev Tools will help you practice (but don't expect to be a pro when you finish this exercise)! **DO NOT MODIFY ANY HTML TO COMPLETE ANY OF THESE EXERCISES.**

We have provided screen shots as examples of how the page should look when you've completed each exercise. You will need to take a screen shot of each completed exercise to include in your [my_reflection.md](my_reflection.md) file.
**Refresh your page after each exercise to start each exercise from a fresh slate.**

NOTE: A lot of learning CSS is trial and error. That's OK. If you are afraid you got the boxes formatted properly but don't know how you did it, cross out any CSS you changed to see how it effects the boxes, or refresh the page entirely. Then, when you feel like you know how you did it, erase everything you did and do it again.

### Exercises
The original file should look like this:<br>
<img src="../imgs/devtools-original.png" width="400" height="403">

#### 1. Change the Colors
Change the background-color of the boxes. To do this, in the css section on DevTools (under `element.style`) type "background-color". You'll then see a list of colors - select your favorite for each box! Don't forget to take your screenshot and refresh the page.<br>
<img src="../imgs/devtools-colors.png" width="400" height="393">

#### 2. Column
Stack the elements in top of one another without any space between them (in order). You can do this, simply by removing existing CSS.<br>
<img src="../imgs/devtools-column.png" width="400" height="249">

#### 3. Row
Put the boxes in a row. Have the boxes that have size dimensions defined keep their original shape and size. HINT: Look at the [CSS Display](https://developer.mozilla.org/en-US/docs/Web/CSS/display) property.<br>
<img src="../imgs/devtools-row.png" width="400" height="193">

#### 4. Make Equidistant
Put the boxes in a row. The sizes should be identical automatically. Put 5em of distance between them. Then add 5em from the top of the page.<br>
<img src="../imgs/devtools-equal.png" width="400" height="140">

#### 5. Squares
Resize the boxes so they are squares (I used 5em).<br>
<img src="../imgs/devtools-squares.png" width="266" height="400">

#### 6. Footer
Make `div-1` a footer. Make the height 2em, the width 100% of the screen (Get rid of that annoying gray to the left). Then move it to the bottom of the page. No matter what, this div should always stay at the bottom. HINT: review the [CSS Position](https://developer.mozilla.org/en-US/docs/Web/CSS/position) property.<br>
<img src="../imgs/devtools-footer.png" width="400" height="220">

#### 7. Header
Now move `div-2` to the top of the page and make it 5em tall. It should always be at the top of the browser window. Make the width 50% of the entire screen and center it.<br>
<img src="../imgs/devtools-header.png" width="400" height="158">

#### 8. Sidebar
Move `div-3` to the right so it looks like a right sidebar it should be 15% the width of the screen and 100% of the height of the viewer window. You'll want to get help from Google on this one.<br>
<img src="../imgs/devtools-sidebar.png" width="400" height="158">

#### 9. Get Creative
Remove all of the size and positioning elements. They should stack on top like rows. Then, design and implement your own configuration. Practice using margin, border, and padding to determine how they are different. You may want to read up on this a bit.

Here is our example (You can do anything you want).<br>
<img src="../imgs/devtools-personal.png" width="400" height="269">

Upload each of your images into the week-2 [imgs](../imgs) directory. In your reflection file, display them inline using markdown.

## Release 3: Reflect

Go to your [Reflection file](my_reflection.md) to write your reflection - include answers to the questions in the file in addition to the [reflection guidelines](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/reflection-guidelines.md).

## Release 4: Commit and Push
Commit and push your changes to GitHub.
