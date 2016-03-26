#!/bin/bash
# Notify you when a task is done
#
# $ notify mvn clean install
# runs 'mvn clean install'
# notify you when it's done
#
# A notification is sent upon build completion if your OS supports it:
# - on Mac OS, install Growl and grownnotifier
# - on Linux, install send-notify
#
# Released under the WTFPL license version 2 http://sam.zoy.org/wtfpl/
#
# Copyright (c) 2010 David Gageot
# Copyright (c) 2011 Sanne Grinovero
# Copyright (c) 2010-2015 Emmanuel Bernard
# Copyright (c) 2016 Martin Braun
say() {
    if [ `uname -s` == "Darwin" ]; then 
        # On Mac OS, notify via Growl
        which -s growlnotify && growlnotify --name "Command line" --sticky --message "'$CMD_DISPLAY' has finished - $RESULT"
    fi
    if [ `uname -s` == "Linux" ]; then
        # On Linux, notify via notify-send
        which notify-send && notify-send "'$CMD_DISPLAY' has finished" "$RESULT"
    fi
    if [[ `uname -s` == "CYGWIN"* ]]; then
        # On Windows with Cygwin and the toast.exe
        which toast && toast -w -t "'$CMD_DISPLAY' has finished" -m "$RESULT"
    fi
}

if [[ $# -eq 0 ]]; then 
  echo "Usage notify <command to run>"
else
  CMD_DISPLAY="$@"
fi

$@
EXIT_CODE=$?

if [ $EXIT_CODE -eq 0 ]; then
  RESULT="SUCCESS"
  echo $RESULT    
  say
else
  RESULT="FAILURE"
  echo $RESULT
  say
  exit $EXIT_CODE
fi