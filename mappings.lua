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
    ["<A-w>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command

    -- reload
    ["<leader>r"] = { ":so %<CR>", desc = "Reload" },
    ["<leader>R"] = { ":AstroReload<CR>", desc = "Reloads config" },

    -- file-tree-explorer
    ["<A-e>"] = { ":Neotree toggle<CR>", desc = "file-explorer" },

    -- tabs
    ["<A-S-k>"] = { "<cmd>tabnext<CR>", desc = "Next tab" },
    ["<A-S-j>"] = { "<cmd>tabprevious<CR>", desc = "Prev tab" },
    ["<A-S-l>"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<A-S-d>"] = { "<cmd>tabclose<CR>", desc = "Close tab" },

    -- windows nav
    ["<A-q>"] = { ":q<cr>", desc = "close window" },

    ["<A-l>"] = { "<cmd>wincmd l<CR>", desc = "next window" },
    ["<A-h>"] = { "<cmd>wincmd h<CR>", desc = "prev window" },
    ["<A-j>"] = { "<cmd>wincmd j<CR>", desc = "down window" },
    ["<A-k>"] = { "<cmd>wincmd k<CR>", desc = "up window" },

    -- windows split
    ["<A-o>"] = { "<cmd>vsplit<CR>", desc = "vertical split" },
    ["<A-y>"] = { "<cmd>split<CR>", desc = "horizontal split" },

    -- windows size
    ["<A-n>"] = { "<cmd>vertical resize -5<cr>", desc = "Decrease window width" },
    ["<A-m>"] = { "<cmd>vertical resize +5<cr>", desc = "Increase window width" },
    ["<A-,>"] = { "<cmd>horizontal resize +2<cr>", desc = "Decrease window width" },
    ["<A-.>"] = { "<cmd>horizontal resize -2<cr>", desc = "Increase window width" },

    -- buffers
    ["<A-u>"] = { "<cmd>bprevious<cr>", desc = "Prev buffer" },
    ["<A-i>"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
    ["<A-d>"] = { ":bp | sp | bn | bd<cr>", desc = "Close buffer" },
    ["<C-j>"] = { "<cmd>bprevious<cr>", desc = "Prev buffer" },
    ["<C-k>"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
    ["<C-d>"] = { "<cmd>bp | sp | bn | bd<cr>", desc = "Close buffer" },

    -- spellcheck code
    ["fd"] = { "<cmd>set spo=camel<cr>", desc = "SpellOptions CamelCase" },
    -- echo test
    -- ["<leader>a"] = { "<cmd>echo 'Hello'<cr>", desc = "test keymap" },
  },

  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    -- windows nav
    ["<A-l>"] = { "<cmd>wincmd l<CR>", desc = "next window" },
    ["<A-h>"] = { "<cmd>wincmd h<CR>", desc = "prev window" },
    ["<A-j>"] = { "<cmd>wincmd j<CR>", desc = "down window" },
    ["<A-k>"] = { "<cmd>wincmd k<CR>", desc = "up window" },
    ["<A-q>"] = { "<cmd>q<cr>", desc = "close window" },

    -- windows split
    ["<A-o>"] = { "<cmd>vsplit<CR>", desc = "vertical split" },
    ["<A-y>"] = { "<cmd>split<CR>", desc = "horizontal split" },

    -- windows size
    ["<A-n>"] = { "<cmd>vertical resize -5<cr>", desc = "Decrease window width" },
    ["<A-m>"] = { "<cmd>vertical resize +5<cr>", desc = "Increase window width" },
    ["<A-,>"] = { "<cmd>horizontal resize +2<cr>", desc = "Decrease window width" },
    ["<A-.>"] = { "<cmd>horizontal resize -2<cr>", desc = "Increase window width" },

    -- buffers
    ["<A-u>"] = { "<cmd>bprevious<cr>", desc = "Prev buffer" },
    ["<A-i>"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
    ["<A-d>"] = { "<cmd>bp | sp | bn | bd<cr>", desc = "Close buffer" },
    ["<C-j>"] = { "<cmd>bprevious<cr>", desc = "Prev buffer" },
    ["<C-k>"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
    ["<C-d>"] = { "<cmd>bp | sp | bn | bd<cr>", desc = "Close buffer" },
    -- -- esc
    -- ["kj"] = { "<Esc>", desc = "To normal mode" },
  },

  i = {
    ["kj"] = { "<Esc>", desc = "To normal mode" },
    ["<A-c>"] = { "<leader>/", desc = "Comment line" },
  },
}
