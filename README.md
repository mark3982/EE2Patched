EE2Patched
==========

Equivalent Exchange 2 with a patch to make it work correctly with Bukkit and therefore other plugins, and fix some dupes.

There are two parts to this patched package. You have the original mod source as EE2Patched then you have a src
directory which contains a helper plugin. You need the helper plugin compiled and placed into the /plugins/ directory
as a JAR file. The EE2Patched should be compiled then zipped up as a ZIP file using the standard deflate algorithm.

Once both files are placed in their correct locations the server can be started.

It is straight forward to compile the EE2Helper once you have all the required dependancies present. However, the actual
mod known as EE2Patched is not as straight forward. You first must compile it. See the compile.bat file for reference on
how it needs to be compiled although it should be standard knowledge. After compilation class references in the resulting
class files (before being zipped) must be modified using the EEFixer application. This tool helps make the job a lot easier
by going into the class files and making the changes instead of having to decompile everything.

The EEFixer has a dependancy for the asm-all-4.0.jar which can be found at http://asm.ow2.org/.
