[Week 2 Home](../)

# U1.W2: Beginning HTML - Mandatory Pairing Challenge!

## Learning Competencies
- Set up a basic HTML page with the appropriate tags (html, head, title,etc.)
- Add paragraphs, headings, links, images, lists, and/or tables
- Divide content on a page using divs and spans

## Summary
In this challenge, you will be building an HTML-only clone of [Berkshire Hathaway's website](http://www.berkshirehathaway.com/) without looking at the source code. It's a pretty simple site, but can be done in various ways. It should not look exactly like the original site after this challenge. You will be adding CSS in the next challenge. The point of this challenge is to get the HTML skeleton up and running.

The site shouldn't be an exact copy. It should just be as close as you can make it without any formatting. Remember to time box!

Before you pair, go through Release 0 by yourself. Then get together with your pair for releases 1 and 2.

## Releases

## Release 0: Learn Basic HTML

- Go through [codecademy](http://www.codecademy.com/en/tracks/web) sections:
  - HTML Basics
  - HTML Basics II (Sections 1-6 Only. Skip the styling sections -- It's bad practice to style HTML directly, so please skip this. You'll learn about styling in the CSS challenge.)
  - HTML Basics III *(see note below)*

**NOTE: In HTML Basics III, they ask you to make sure the font-family is Arial. Because we asked you to skip over the styling sections, (it's bad practice to style HTML in this way) we are giving you the code to get past it. Please paste the following into the `<head>` section underneath `<title>`.

```html
<style>
  h1 {
    font-family: Arial;
  }
</style>
```
CSS is in between the `<style>` tags. You'll learn about using CSS in the next challenge.

Codecademy does a good job teaching the basics of HTML, but it doesn't really cover semantic elements added to HTML5. Try to use the semantic elements that make sense. There are a few references to consider in the "Additional Resources" section below.

## Release 1: Set up your HTML Page
It's time to use the tools you learned in codecademy. In the [my-berkshire-site.html](my-berkshire-site.html), set up your webpage using the appropriate tags. You should have a doctype, a head, title, etc. If you need help or want guidance, browse the resources listed at the bottom of the challenge. Don't forget your closing tags!

Note: You can view your HTML page at any time by opening the file in a browser.

As you go, validate your HTML in this [HTML Validation Tool](http://validator.w3.org/#validate_by_input). This will tell you if your HTML passes the HTML5 (or other versions) validations. It's a good habit to get into.

## Release 2:
Now it's time to add the fun stuff. You don't need to point to the correct URL in the links; instead you can point to a placeholder (like`"#"`). You should try getting the content to look about the same as the image below.

Consider whether you want to use a table, list, or divs. Read [this article](http://www.smashingmagazine.com/2009/04/08/from-table-hell-to-div-hell/) to determine which you'd rather use.

You don't need to worry about formatting the site since you will be adding it in the [next](../beginning-css) challenge. When you finish adding the content using HTML, you site should look something like the image below. It's ok if it's different though -- as long as there is no formatting in the HTML.

![unformatted berkshire](../imgs/unformatted-berkshire.png)

We've included the Geico image (geicoimg.gif) for you in the week-2 [imgs](../imgs) directory for you to use in your site.

## Release 3: Reflect
Answer the reflection questions on the [my_reflection.md](my_reflection.md) file associated with this challenge.

## Release 4: Publish
Commit your changes for each file in this challenge, and push your changes to github.

## Additional Resources:
- [HTML5 outlines](http://html5doctor.com/outlines/)
- [HTML5 Style Guide](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Sections_and_Outlines_of_an_HTML5_document)
- [HTML tag cheatsheat](http://skillcrush.com/wp-content/uploads/2012/06/HTML-Cheatsheet-Skillcrush.pdf)
- [Beginners guide to HTML and CSS](http://learn.shayhowe.com/html-css/)
- [Build a simple website](http://teamtreehouse.com/library/build-a-simple-website)
