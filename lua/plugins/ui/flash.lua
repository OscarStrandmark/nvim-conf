return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {},
  keys = {
    { "j", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "J", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
  },
}
