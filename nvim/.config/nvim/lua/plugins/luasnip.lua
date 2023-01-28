require("mapping.helper")

if vim.g.snippets == "luasnip" then
  return
end

local ls = require "luasnip"

ls.config.set_config {
  history = true,

  updateevents = "TextChanged,TextChangedI",
}

map({ "i", "s" }, "<c-n>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end)

map({ "i", "s" }, "<c-e>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end)

map("i", "<c-l>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end)
