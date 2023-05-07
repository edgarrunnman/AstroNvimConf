-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  n = {
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },

    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command

    -- reload
    ["<leader>r"] = { ":so %<CR>", desc = "Reload" },
    ["<leader>R"] = { ":AstroReload<CR>", desc = "Reloads config" },

    -- tabs
    ["<A-S-k>"] = { "<cmd>tabnext<CR>", desc = "Next tab" },
    ["<A-S-j>"] = { "<cmd>tabprevious<CR>", desc = "Prev tab" },
    ["<A-S-l>"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<A-S-d>"] = { "<cmd>tabclose<CR>", desc = "Close tab" },

    -- windows
    ["<A-l>"] = { "<C-w>l", desc = "next window" },
    ["<A-h>"] = { "<C-w>h", desc = "prev window" },
    --["<A-q>"] = { ":q<cr>", desc = "close window" },
    ["<A-p>"] = { "<C-w>v", desc = "vertical split" },
    ["<A-o>"] = { "<C-w>", desc = "horizontal split" },
    ["<A-m>"] = { "<cmd>vertical resize -10<cr>", desc = "Decrease window width" },
    ["<A-,>"] = { "<cmd>vertical resize +5<cr>", desc = "Increase window width" },

    ["<C-l>"] = { "<C-w>l", desc = "next window" },
    ["<C-h>"] = { "<C-w>h", desc = "prev window" },
    --["<A-q>"] = { ":q<cr>", desc = "close window" },
    ["<C-p>"] = { "<C-w>v", desc = "vertical split" },
    ["<C-o>"] = { "<C-w>", desc = "horizontal split" },
    ["<C-m>"] = { "<cmd>vertical resize -10<cr>", desc = "Decrease window width" },
    ["<C-,>"] = { "<cmd>vertical resize +5<cr>", desc = "Increase window width" },

    -- buffers
    ["<A-j>"] = { "<cmd>bprevious<cr>", desc = "Prev buffer" },
    ["<A-k>"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
    ["<A-d>"] = { "<cmd>bd<cr>", desc = "Close buffer" },
    ["<C-j>"] = { "<cmd>bprevious<cr>", desc = "Prev buffer" },
    ["<C-k>"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
    ["<C-d>"] = { "<cmd>bd<cr>", desc = "Close buffer" },

    -- echo test
    -- ["<leader>a"] = { "<cmd>echo 'Hello'<cr>", desc = "test keymap" },
  },

  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },

  i = {
    ["kj"] = { "<Esc>", desc = "To normal mode" },
    ["<A-c>"] = { "<leader>/", desc = "Comment line" },
  },
}
