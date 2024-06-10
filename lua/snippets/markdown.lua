local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- Add snippets only for markdown file type
ls.add_snippets("markdown", {
  s({ trig = "/./", wordTrig = false }, {
    t("[JK: "),
    i(1),
    t("]"),
  }),
})
