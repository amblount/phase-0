[Week 1 Home](../)

# U1.W1: Intermediate CLI Exploration Challenge

## Learning Competencies

- Summarize the reasons you would use command line tools
- Use `pushd` and `popd` and explain how they work
- Compare and use `less` and `more`
- Find text within files and files using search terms
- Describe the computer environment

## Summary
You may have already forgotten a bunch of what you learned in the first command line
challenge, so here is the chance to refresh your understanding and practice using the
more complicated commands.

Most modern web-stack development occurs on operating systems that are modeled
on or which use the paradigms of the Unix operating system. Invented in 1969
at Bell the Unix operating system predates Mac OSX, MacOS, Windows, etc. by
nearly 20 years. It is an operating system which was capable of
running efficiently on hardware over a thousand times slower than your mobile
phone.

While its interfaces may look strange, mastery of the Unix OS will allow you to
do your work of development quickly and efficiently.

In this challenge we will take some time to explore some of the most essential
utilities and will attempt to understand when to reach for them.

As you see commands you don't understand, look them up. Own your education insofar as you can see strange things and _choose_ to explore versus having the lesson spoon-fed.

Reflect upon what constraints each of these utilities might have been implemented in response to.

## Releases

## Release 0: Background

When Unix was invented (circa 1969), one of the primary peripherals was a means for
displaying text. Yes, even back then humans had evolved eyeballs and it was
their primary mode for interacting with the computer.

While it may baffle the modern human mind, at that time monitors were
primitive and expensive. Many computer operators _didn't have a monitor_, _they
didn't even have a terminal_.

They had paper (lots of it!) and they had electric printer technology. From
these two available resources the [teletype][] was born. A user would key in a
command on a keyboard and strike enter. The request would be routed to the
computer and the computer, after processing the command, would send back data
to the teletype. The teletype, upon receiving signal, would then proceed to
move the typewriter ball to stamp ink and metal imprints on the paper.

![Image of Teletype Printer](./img/36_l_teletype.jpg)

It was the dark ages.

Given these constraints certain features of the Unix operating system were
born.

- Privilege focused queries to produce focused output.
- Report nothing unless something went wrong.
- There is no scrollback (unless you literally look at the paper output
  that had been printed thus far).

These design decisions align well with a universe where each command results in
a tooth-chattering chunk-chunk-chunk of a typewriter for every single command.
By the time that, roughly 6-8 _years_ later, terminals became cheap enough to
shower operators in the pure luxury of 80 columns of text with 24 rows of text
e.g. the [vt100][], the design patterns had taken root: _searching_ and
navigating accurately _without_ a scrollback_ was a given.

<img src="./img/DEC_VT100_terminal.jpg" width="400" height="355">

While these tools weren't the most friendly to the uninitiated, their speed and
"getting the answer you want" quality has kept them alive and relevant for the
past near half-century. Imagine any technological bets that you might have
made in 1969 that would still be right today. The Unix design philosophy is
one of them.

## Release 1: Modern Times

While a modern terminal emulator will have scrollback, search in buffer, etc.
it is often better and more accurate to make better use of Unix tools.
Further, in the context of interviewing, knowing how to use the Unix operating
system to produce the right answer without having to do a bunch of massaging,
formatting, cutting and pasting, and other inefficient work is a distinguishing
mark. Let's meet these power-tools: elegant weapons of a more advanced time.

## Release 2: `pushd` and `popd`

As you spend more time in the terminal environment, you'll find that
traversing directory locations makes up a lot of your work. Obviously, on
large applications the _depth_ of your directory tree can get quite long.

Recall our teletype machines. You won't be able to cut and paste a directory.
It would be great if the operating system could help you remember the stops you
made during your traversal. Let's experiment. Navigate to your fork of the
`phase-0-unit-1` repository on your computer. Then practice your navigation skills to `cd` through the directories into the
`pushd_popd_ville` directory in this challenge.

Again, if you have questions about this topic, please look them up to get help. Remember, a lot of what we are trying to teach you is how to research.

### Pushd-Popd-Vile

Imagine a town where we need to visit the following services in the following
order: drop off our child at the kiddie gym, take the sport wagon to the
mechanic, make a haircut appointment, visit the bank, and go to a vegetarian
burger joint to place an order.

We need to visit the following directories in this order:

- `kiddie_gym`
- `mechanic`
- `hair_salon`
- `bank`
- `vegetarian_burger_joint`

And in each one `touch` a file called "visited." (`touch` creates a new file in the directory). Visit each directory using
`pushd` and touch a file called `visited`. When you're done, change back
(`pushd`!) to the `pushd_popd_ville` root and run the script `./head_home`.

Now we want to go backward through the list of directories we visited. We can
use `popd` for this purpose. As you popd back through the directories you
visited, you'll see that `head_home` has made new files for you in each
directory. Keep using `popd` until you're (again) back in the
`pushd_popd_ville` root.

### Benefits of `pushd` and `popd`

- These commands expose one of the most powerful data structures in computing, known as a "stack."
  `pushd` pushes a directory into a stack of directories and `popd` pulls the
  directory name off the stack _and `cd`s you into it_.
- They are faster than using a mouse to copy and paste directory paths.
- You may need to use them if you don't have mouse support and need to log into a remote system.
- As you work on bigger applications you may want to add directories.

## Release 3: `less` and `more`

Remember how I mentioned people were on teletypes or, better yet, terminals?
Well, since the mouse hadn't been implemented yet (I know!), sometimes a file
might have too much data to process in one screen. What was desired was some means
for making output display on the screen one **page at a time**. A series of
utilities called **pagers** was conceived to help people flow output into
**pages** of data at a time. The first of these was **more**. On modern
Unix-like operating systems **more** has been superseded by **less**. In fact,
on most modern operating systems, `more` is an alias to `less`.

Here it is on my Mac:

    ➜  pagers git:(master) ✗ md5 /usr/bin/more /usr/bin/less
    MD5 (/usr/bin/more) = 406fc2503cac7223db46b142ca9a9e73
    MD5 (/usr/bin/less) = 406fc2503cac7223db46b142ca9a9e73

`md5` proves that these two files produce the exact same cryptographic hash.
They're as identical as identical can be! (If you are confused about this, try doing a little research on it.)

So let's take `less` for a spin.

Inside the `pagers` directory (also within this challenge) is a typical Rails log file.

Let's use `cat` to display it on the screen. By the way, meet the `cat`
command, it reads contents from a source and, by default, sends them to the
screen. Some of you clever people might be wondering what happens if you want
to override that default...good question, let's explore it later.

`cat development.log`

Did you catch all that? Nope? Me neither. You need to slow down the output.
Let's do so with `less`.

`less development.log`

Oooh! Here we are getting out screens in much more helpful units of text.
Use SPACE to **page** through the data. Use `q` to **q**uit.

You can consult `less`' `man` page by executing the command `man less` to learn
more about how to move forward and backward. I assure you that in your
development career you will want to use `less` to page through a crash log, a
debug log, etc.

Related to `less` is `head` and `tail`. These utilities can be used to give
you the first 10 lines or the last 10 lines of a file. While you _can_ open a
large file in Sublime, realize that Sublime is not equipped to read a file
with a million lines. Unix, however, is well equipped to generate a text file
with millions of lines. How can you quickly check out what's at the top?
`head`. **You will need these utilities in order to efficiently get data about
your applications**.

## Release 4: Finding Things

### Finding Text in a File

Sometimes it's handy to be able to find a line in a text file that matches a
RegExp ([Regular Expression](http://image.slidesharecdn.com/regex-public-131204120546-phpapp01/95/regex-101-4-638.jpg?cb=1386180910)). That's what `grep` does. `G`lobal `r`egular `e`xpression `p`rint.

Inside the `grep_and_find` directory you'll find a database dump for a wine
store. (Use `ls` to find out what it's called). Let's say we wanted to find out how many tables this database has. We
could deduce that by finding all the `CREATE TABLE` commands. In order to
extract those from this file, we can use `grep`.

Try invoking `grep` with a regular expression and a file name. The regular
expression need not be complicated, `grep "CREATE" filename` should suffice.

Maybe you can `pushd` to the `pagers` directory and search for all the lines
containing `GET` inside the `development.log` file. Maybe that creates too
much output. You could, perhaps use a tool we've just discussed to limit that
output (You'll need to research how to combine these). When you're done you can `popd` back whence you came.

### Finding a File

As your programs get bigger and your comfort with Unix grows you're going to
eventually misplace a file. You'll think you created it in the right terminal
window but lo, the file's not there. How can you find a file based on
wildcard? `find` is your friend here.

Why don't you try `find . -name message.txt`?

Cool! Here are all the files that match this pattern. You can use wildcards (*)
too.

Why don't you try `find . -name "m*.txt"`?

As a bonus, why don't you try using `pushd` and visit each directory with a
`message.txt` file, view the message file, and get a special message from me.

As a super bonus, try using `find`'s `exec` flag to find all files matching
`message.txt` and then `cat` the file's contents. `exec` is one of the least
friendly options for an argument ever, but with a bit of Google, I'm sure you
can figure it out.

## Release 5: The Environment and `echo`

Every process (i.e. command) in Unix is a child of a parent process. When
electricity is plugged into a Unix machine, the chips on the hardware start the
operating system which, in turn, launches process #1. On my Mac that's called
`launchd` on GNU/Linux systems that's called `initd`. Let's see it.

      $ ps -A |grep launch |head -1
      1 ??        11:20.34 /sbin/launchd

Every parent process gives it its child processes an environment, in the
same way your parents gave you Grandpa's nose and great-grandma's
earlobes. You might call that your genetic "environment." In the same way, a
Unix process passes to its children its own environment. To see the
environment of your current shell, issue `env` from the command line (and
perhaps run the data through a pager!).

The environment is defined as a series of variables. By convention environment
variables are set as `ALL_CAPS`.

Environment variables affect the way child processes behave. In my environment
there's a value for `LSCOLORS`. If we `man ls`, and type `/LSCOLORS` (which
means search forward to the word `LSCOLORS`), we can see that the environment
variable `LSCOLORS` adjusts the way `ls` behaves.

While entering `env` and using a pager certainly works, sometimes we want to
get the value of a known environment variable. In this case we use `echo`.

      $ echo $LSCOLORS
      Gxfxcxdxbxegedabagacad

You'll see that you have to append `$` to "get the value of the variable" out.
Otherwise `echo` will literally echo, uh, LSCOLORS. Probably not what we want.

Environment variables are often defined in your shell's "run control" file.
"Run control" is just a fancy way of saying "startup" file. Each time you
start your shell (i.e. open a terminal, ssh into a server) that shell's run
control file is read. What's in it? Well, mostly setting environment
variables. Typically the file you should examine is called `.bashrc` (Bash Run
Control) or `.bash_profile`. Stretch yourself and explore these files.
Realize that all these files do is save you the tedium of having to
re-configure your shell environment over and over and over again.

## Release 6: Further

These releases serve to show you that Unix is, in many ways, a powerful
programming environment in and of itself. As a taste of what's possible, let's
examine `pagers/development.log`. Let's say we wanted to know how many times
the user at 127.0.0.1 committed a POST action at the path called `/twoots`.

    $ grep "POST.*127.0.0.1" development.log |wc -l
    30

Or, say that we want to start a beer shop instead of a wine shop?  Check out
`grep_and_find/winestore-db-dump.sql`.

    cat winestore-db-dump.sql |sed 's/wine/beer/g' | less

Look you can now **page** through the transformed (that's what `sed` does,
learn about it!) winestore database dumpfile.  You'll see that commands can be
joined together with the `|` character - learn about it on the Internet!

Granted you could use a higher level language like Ruby, C, or Java to do this
work, but text transformations is something at which Unix **excels**.  Before
you could even open the file in Ruby a Unix wizard will have answers.

**Knowing your Unix fu can make up for other weaknesses in interviews**.  Let
Unix help you code better but also let it help open doors for you.

Your Unix shell mastery journey is far from complete.  A good programmer will
constantly be revising his or her mastery of these tools.  A good programmer
will take notes of other shortcuts that other Unix masters use and will
zealously add them into his or her toolbox.  Unix power users will even play
"Unix golf" where they try to find the shortest way to accomplish a task using
the Unix toolset. Furthermore, you'll need to continually find excuses to practice
using these commands through the rest of Dev Bootcamp to keep your skills sharp.

## Release 7: Reflect
Reflecting is essential for solidifying your learning. Visit the [my_reflection.md](my_reflection.md) file associated with this challenge to add your reflection. Limit your reflection time to about 10-15 minutes.

## Resources

* [Teletype Corporation][teletype]
* [DEC Vt100 terminal][vt100]

[teletype]: http://en.wikipedia.org/wiki/Teletype_Corporation
[vt100]: http://en.wikipedia.org/wiki/VT100
