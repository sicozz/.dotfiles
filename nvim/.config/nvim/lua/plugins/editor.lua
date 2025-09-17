return {
  {
    "ThePrimeagen/harpoon",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = true,
    keys = {
      { "<leader>H", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Mark file with harpoon" },
      { "<leader>h", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Toggle quick menu" },
      { "<leader>1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = "Open file 1" },
      { "<leader>2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "Open file 2" },
      { "<leader>3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = "Open file 3" },
      { "<leader>4", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", desc = "Open file 4" },
    },
  },

  {
    "nvim-mini/mini.hipatterns",
    enabled = true,
    event = "BufReadPre",
    opts = {
      highlighters = {
        hsl_color = {
          pattern = "hsl%(%d+,? %d+%%?,? %d+%%?%)",
          group = function(_, match)
            local utils = require("solarized-osaka.hsl")
            --- @type string, string, string
            local nh, ns, nl = match:match("hsl%((%d+),? (%d+)%%?,? (%d+)%%?%)")
            --- @type number?, number?, number?
            local h, s, l = tonumber(nh), tonumber(ns), tonumber(nl)
            --- @type string
            local hex_color = utils.hslToHex(h, s, l)
            return MiniHipatterns.compute_hex_color_group(hex_color, "bg")
          end,
        },
      },
    },
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
  },

  {
    "folke/persistence.nvim",
    enabled = false,
  },
}
