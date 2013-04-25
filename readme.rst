======================================================================
 Android Tutorial: "Building Your First App" using command-line tools
======================================================================

This project was created because I had trouble using the Android
tutorial to successfully build an Android app using the command line
tools.

The `tutorial
<http://developer.android.com/training/basics/firstapp/index.html>`_
works quite well for Eclipse users, however I prefer to use Emacs, so
I tried using their instructions for command-line users.  There were a
number of small and annoying differences, some out-of-date commands
and some omitted directions, so I've tried to fill in the gaps
somewhat.

Prerequisites
=============

These instructions assume Windows; I haven't yet tested this on Linux.

Android SDK
-----------

Get it from http://developer.android.com/sdk/index.html.  Select "Use
an existing IDE" since we don't need Eclipse, and click the download
link.

When installing the SDK, be sure to install at least everything
recommended by `this page
<http://developer.android.com/sdk/installing/adding-packages.html>`_.
Additionally, install the "Android SDK Platform-tools" package if it
isn't automatically selected.

Apache Ant
----------

Get it from http://ant.apache.org/bindownload.cgi.  Pull the current
release zip file or tarball and extract it somewhere on your system.

Set up a phone or emulator
--------------------------

This is actually covered in the Android tutorial, so here are links to
the relevant sections:

- `Run on a Real Device <http://developer.android.com/training/basics/firstapp/running-app.html#RealDevice>`_
- `Run on the Emulator <http://developer.android.com/training/basics/firstapp/running-app.html#Emulator>`_

Windows-specific: set up the build environment
----------------------------------------------

At a minimum, you need to set up your PATH environment variable
appropriately for your system, based upon where the Android SDK and
Apache are installed.

My suggestion is to modify and use the included android_shell.bat,
which will tweak your environment just within the command prompt it
generates.  Of course, there's nothing wrong with adding stuff to your
PATH variable; I just tend to like this type of self-contained
environment.

Building and installing the app
===============================

Assuming you have your build environment set up per the prerequisites,
you should be able to just run::

  ant debug install

This will build and install the app onto your emulator or phone.

Errata in this project
======================

- Rather than com.example.myfirstapp, my package name is
  net.vultaire.example.  This manifests in a few string literals and
  in a slightly different src/ directory structure.  Other than this,
  it is functionally equivalent to the demo created through following
  the tutorial.
