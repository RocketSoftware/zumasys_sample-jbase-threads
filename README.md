These samples illustrate the use of the thread keywords for jBASE jBASIC introduced in jBASE 4.1.  This is real thread support
and will allow you to spawn off background processes that your master process is in control of.

Note - jBC.h must be INCLUDEd to use these keywords. 

All samples demonstrate how you can compile using jcompile directly in the sample directory. Doing it this way ignores
using the lib and dev directives and compiles everything into the sample directory.  Just cd to the appopriate directory with
a session that can run jbase commands.  The easiest way to normally do this is to log into jbase, get to the jsh prompt, and then
type cmd on windows or bash on linux to get out to your command prompt.  Then cd to the sample directory where you extracted these
examples

# Special considerations per platform

## Linux

Linux will not by default look in your current directory for either executables or shared libaries.  This means you must put ./ in
front of any executable request to look in your existing directory (example #./test_program).  For the shared libraries you
must update your LD_LIBRARY_PATH environment variable to look in your current directory.  If you make a mistake enter exit to return
back to your jsh environment and start over.

```
# export LD_LIBRARY_PATH=$LD_LIBARY_PATH:./
```

You can also move these files over to your normal BP work area and compile them there normally.

