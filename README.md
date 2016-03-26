Notify
======

"Here is a tiny little tool that will speed up the multi-tasking life of terminal users: be notified when a command finishes.

How many times have you started a command in the terminal to realise that it will take a while? How many times did you then move to emails or twitter "in the mean time"? How many times have you forgotten about it and read our twitter feed for 30 minutes aka 25 minutes longer than the actual command?"

Note: This text is from the blog post about [Emmanuel Bernard's version](https://emmanuelbernard.com/blog/2015/03/26/being-notified-when-commands-end "Emmanuel Bernard: Get notified when terminal commands end") of this script. This version adds additional Windows support.

![xkcd Compiling](https://imgs.xkcd.com/comics/compiling.png)

Usage
=====

The usage is as follows:

![Console call](images/notify_call.png)

You will be notified with a toast that looks similar to this (on Windows)

![Popup on Windows](images/toast.png)

Installation (Windows)
======================

You need to have Cygwin installed and on your path. Additionally, put notify.sh, notify.bat and toast.exe on the path as well.

Installation (Linux, Mac)
=========================

Only notify.sh is needed on the path. But take a look at the blog post about [Emmanuel Bernard's version](https://emmanuelbernard.com/blog/2015/03/26/being-notified-when-commands-end "Emmanuel Bernard: Get notified when terminal commands end") for more information on this.

Credits
=======

original script
---------------

- David Gageot
- Sanne Grinovero
- Emmanuel Bernard

toast.exe
---------

- [nels-o on GitHub](https://github.com/nels-o/toaster)

License statement from the repository:

For now I'm releasing this under the Creative Commons Attribution license http://creativecommons.org/licenses/by/3.0/us/
By for now, I mean, basically forever, pending a release to the public domain. Until such time as that, please include
a link to (this page)[https://github.com/nels-o/toaster] with any use you make of the provided source.


