TurtleSnap
==========

Tool to make a gif from animations created in programs using the `turtle` module.

## Motivation

Grading turtle programs is a pain since executing them takes a while. 
This program is an attempt to automate that execution process - instead of running it manually, using this
I can flip through gif files generated from their programs.

## Usage

Type `python snapshot -h` for exact instructions.

Example usage `python snapshot.py example/example.py example/animation.gif -s 500` creates a gif file 
at `example/animation.gif` from example.py. It takes a snapshot every 500 ms.

Resulting gif:

<img src="https://raw.github.com/macobo/TurtleSnap/master/example/animation.gif"></img>

## Requirements
It requires that both ImageMagick and tkinter (needed for the turtle module) are installed.

The program has been tested using python 3.3 and 2.7. 
