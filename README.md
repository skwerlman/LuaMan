LuaMan
======

http://en.wikipedia.org/wiki/Man_page

####Intro
A basic man page reader for ComputerCraft, inspired by man-db.
LuaMan pages are stored in the JSON format, because it allows for both easy manual and automatic generation.

LuaMan is a powerful documentation system because it allows for complex embedded code inserted at _tag-points_.
A _tag-point_ is at the start of a line, begins with '@', and is exactly three characters long. They can be used to set the color of a line, generate a TOC, or do pretty much anything else.

####Example Document
A well-formatted example of a LuaMan page is at https://github.com/skwerlman/LuaGRUB/blob/master/lgrub.sys/doc/dev.JSON.
This page includes tags for setting text color as well as a tag ('TC') that generates an entire TOC in the middle of being displayed.

####Current Features
- None! I'm just starting now!

####Planned Features
- Converts a JSON file into a table named doc, and displays all the contents of doc.text, with the exception of doc.text.titles, which is used to print headers wherever required
- Support tag-points inserting code at the beginning of each line of body text
- Support default colors as defined in doc.colors.FG and doc.colors.BG
- Support default header colors as defined in doc.colors.H
- Self documentation
- Documentation auto-updates based on the url in doc.update
- Possibly other stuff if I think of anything
