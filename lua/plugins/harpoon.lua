return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("harpoon"):setup()
    end,
    keys = {
      {
        "<leader>a",
        function()
          require("harpoon"):list():append()
        end,
        desc = "Harpoon it!",
      },
      {
        "<leader>Ac",
        function()
          require("harpoon"):list():clear()
        end,
        desc = "Clear Harpooned list",
      },
      {
        "<leader>Ar",
        function()
          require("harpoon"):list():remove()
        end,
        desc = "Remove Harpooned item",
      },
      {
        "<leader>v",
        function()
          local harpoon = require("harpoon")
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = "Harpoon UI",
      },
      {
        "<leader>r",
        function()
          require("harpoon"):list():select(1)
        end,
        desc = "Go to target 1",
      },
      {
        "<leader>t",
        function()
          require("harpoon"):list():select(2)
        end,
        desc = "Go to target 2",
      },
      {
        "<leader>i",
        function()
          require("harpoon"):list():select(3)
        end,
        desc = "Go to target 3",
      },
      {
        "<leader>o",
        function()
          require("harpoon"):list():select(4)
        end,
        desc = "Go to target 4",
      },
    },
  },
}
