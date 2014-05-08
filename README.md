LuaMan
======

http://en.wikipedia.org/wiki/Man_page

####Intro
A basic man page reader for ComputerCraft, inspired by man-db.
LuaMan pages are stored in the JSON format, because it allows for both easy manual and automatic generation.

LuaMan is a powerful docmentation system because it allows for complex embedded code inserted at _tag-points_.
A _tag-point_ is at the start of a line, begins with '@', and is exactly three characters long. They can be used to set the color of a line, generate a TOC, or do pretty much anything else.

####Man Page Format
See https://github.com/skwerlman/LuaMan/tree/format

####Current Features
- None! I'm just starting now!

####Planned Features
- Converts a JSON file into a table named 'this' and displays all the contents of this.text, with the exception of this.text.titles, which is used to print headers wherever required
- Support tag-points inserting code at the beginning of each line of body text
- Support default colors as defined in this.colors.FG, this.colors.BG, and this.colors.H
- Support default header colors as defined in this.colors.H
- Self docmentation
- docmentation auto-updates based on the url in this.update
- Possibly other stuff if I think of anything
