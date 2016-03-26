Notify
======

Here is a tiny little tool that will speed up the multi-tasking life of terminal users: be notified when a command finishes.

How many times have you started a command in the terminal to realise that it will take a while? How many times did you then move to emails or twitter "in the mean time"? How many times have you forgotten about it and read our twitter feed for 30 minutes aka 25 minutes longer than the actual command?

Note: This is an adaption of [Emmanuel Bernard's version](https://emmanuelbernard.com/blog/2015/03/26/being-notified-when-commands-end "Emmanuel Bernard: Get notified when terminal commands end") that works with Windows in addition to Mac and Linux.

![xkcd Compiling](https://imgs.xkcd.com/comics/compiling.png)

Usage
=====

The usage is as follows:

![Console call](images/notify_call.png)

You will be notified with a toast that looks similar to this (on Windows)

![Popup on Windows](images/toast.png)

Installation (Windows)
======================

You need to have Cygwin installed and on your path. Additionally, put notify.sh, notify.bat and notify-send.exe on the path as well.

Installation (Linux, Mac)
=========================

Only notify.sh is needed on the path. But take a look at the blog post about [Emmanuel Bernard's version](https://emmanuelbernard.com/blog/2015/03/26/being-notified-when-commands-end "Emmanuel Bernard: Get notified when terminal commands end") for more information on this.

Credits
=======

- David Gageot
- Sanne Grinovero
- Emmanuel Bernard
