TurtleSnap
==========

Tool to make a gif from animations created in programs using the `turtle` module.

## Motivation

Grading turtle programs is a pain since executing them takes a while. 
This program is an attempt to automate that execution process - instead of running it manually, using this
I can flip through gif files generated from their programs.

## Usage

Type `python snapshot.py -h` for explanation of flags.

Let's take a picture of a turtle program which draws two sine graphs.

`python snapshot.py example/sine.py example/sine.gif -s 500` creates a gif file 
at `example/sine.gif` from `sine.py` by taking a snapshot every 500 ms.

Resulting gif:

<img src="https://raw.github.com/macobo/TurtleSnap/master/example/sine.gif"></img>

## Requirements
It requires that both ImageMagick and tkinter (needed for the turtle module) are installed.

The program has been tested using python 3.3 and 2.7. 
