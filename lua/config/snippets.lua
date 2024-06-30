local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- for JK into the file
ls.add_snippets("markdown", {
  s("jk", {
    t("^[JK: "),
  }),
})
