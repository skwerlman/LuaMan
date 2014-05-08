LuaMan Man Page Format v2.0.0
==============
Here is an example of a well-formed LuaMan JSON. It's contents explain what is going on.

```JSON
{
    "name": "LuaGRUB 1.0.1: Developer's Notes",
    "update": "https://raw.githubusercontent.com/skwerlman/LuaMan/format/README.md",
    "tags": {
        "CR": "if term.isColor() then term.setTextColor(colors.red) end",
        "CB": "if term.isColor() then term.setTextColor(colors.blue) end",
        "CY": "if term.isColor() then term.setTextColor(colors.yellow) end"
    },
    "colors": {
        "FG": "if term.isColor() then term.setTextColor(colors.white) end",
        "BG": "if term.isColor() then term.setBackgroundColor(colors.black) end",
        "H": "if term.isColor() then term.setTextColor(colors.white) end"
    },
    "contents": {
        "toc00": "Table of contents",
        "toc01": "LuaMan",
        "toc02": "Tags Part 1",
        "toc03": "Tags Part 2",
        "toc04": "Self-reference",
        "toc05": "Default Colors",
        "toc06": "Updates",
        "toc07": "Man API",
        "toc08": "Credits"
    },
    "text": {
        "titles": {
            "toc01": "Using LuaMan",
            "toc02": "Writing Tags",
            "toc03": "Using Tags",
            "toc04": "Self-reference",
            "toc05": "About this.colors"
        },
        "toc": [
            "This field is mandatory",
            "It contains the text to be displayed above the TOC"
        ],
        "toc01": [
            ""
        ],
        "toc02": [
            "The LuaMan documentation reader allows for elements called tags to be inserted at the start of a line.",
            "All tags are defined in the 'tags' field of the page's JSON.",
            "Tags can contain any valid Lua chunk.",
            "LuaMan runs those chunks using loadstring() when the corresponding tag is found."
        ],
        "toc03": [
            "Tags can only go at the start of a line.",
            "@CYYellow text",
            " @CYThis text is not yellow, because the @ is not the first character.",
            " ",
            "The tags used in this example JSON only have basic code, but any valid Lua chunk will work.",
            "Tag code can even access the contents of fields in the table. More on this in the next section."
        ],
        "toc04": [
            ""
        ]
    }
}
```
