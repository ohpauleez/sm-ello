
A simple SML intro
==================

### Usage

#### Running a REPL

To start a REPL with the loaded "Hello" source, just execute `sml-cm`.

This will launch SML/NJ (the `sml` command), with
rlwrap support.  This example uses the standard Compilation Manager system
bundled with SML/NJ (ie: `*.cm`).

You can always recompile/remake your project with:

`CM.make "hello.cm"`

#### Exporting your REPL Session/Heap

You can save the current Heap of your REPL session with:

` - SMLofNJ.exportML "mysmlheap";`

You can then restart this session/heap with:

`rlwarp sml @SMLload=mysmlheap`

#### Exporting/building a standalone program

You can use the `ml-build` script to produce a standalone program:

`ml-build hello.cm Main.main test-image`

Alternatively, you can also build the standalone image from the REPL with `CM.mk_standalone`, but the SML manual discourages this.

You can then run this program with the `sml` command, passing in args:

`sml @SMLload=test-image one two "one more argument"`

#### Creating an executable from an image

To create an executable named `foo` from our test-image above:

`heap2exec test-image.XXXX foo`


### Learn more

 * [An introduction to ML](http://cs.lmu.edu/~ray/notes/introml/)
 * [An overview of ML Modules](http://jozefg.bitbucket.org/posts/2015-01-08-modules.html)
 * [Another modules overview](http://courses.cs.washington.edu/courses/cse341/04wi/lectures/09-ml-modules.html)
 * [Introduction to using SML/NJ](http://www.cs.cmu.edu/afs/cs/local/sml/common/smlguide/smlnj.htm)
 * [SML/NJ Homepage](http://www.smlnj.org/)
 * Stay informed about updates to the specification with [SuccessorML](https://github.com/SMLFamily/Proposed-Definition-of-Successor-ML/wiki)

