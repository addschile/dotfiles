lua <<EOF
require'nvim-treesitter.configs'.setup {
  -- ensure_installed = "c", "cpp",     -- one of "all", "language", or a list of languages
  highlight = {
	enable = true,              -- false will disable the whole extension
	disable = {},  -- list of language that will be disabled
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
    -- Setting colors
    --colors = {
    --  -- Colors here
    --},
    ---- Term colors
    --termcolors = {
    --  -- Term colors here
    --}
  },
--  refactor = {
--    highlight_definitions = { enable = true },
--	highlight_current_scope = { enable = false },
--    smart_rename = {
--      enable = true,
--      keymaps = {
--        smart_rename = "grr",
--      },
--    },
--    navigation = {
--      enable = true,
--      keymaps = {
--        goto_definition = "gnd",
--        list_definitions = "gnD",
--        list_definitions_toc = "gO",
--        goto_next_usage = "<a-*>",
--        goto_previous_usage = "<a-#>",
--      },
--    },
--  },
--  textobjects = {
--    -- possible text objects:
--    -- @block.inner
--    -- @block.outer
--    -- @call.inner
--    -- @call.outer
--    -- @class.inner
--    -- @class.outer
--    -- @comment.outer
--    -- @conditional.inner
--    -- @conditional.outer
--    -- @function.inner
--    -- @function.outer
--    -- @loop.inner
--    -- @loop.outer
--    -- @parameter.inner
--    -- @statement.outer
--	select = {
--	  enable = true,
--	  keymaps = {
--		["af"] = "@function.outer",
--		["if"] = "@function.inner",
--		["ac"] = "@class.outer",
--		["ic"] = "@class.inner",
--		},
--	  },
--	move = {
--	  enable = true,
--	  goto_next_start = {
--		["]m"] = "@function.outer",
--		["]]"] = "@class.outer",
--	  },
--	  goto_next_end = {
--		["]M"] = "@function.outer",
--		["]["] = "@class.outer",
--	  },
--	  goto_previous_start = {
--		["[m"] = "@function.outer",
--		["[["] = "@class.outer",
--	  },
--	  goto_previous_end = {
--		["[M"] = "@function.outer",
--		["[]"] = "@class.outer",
--	  },
--	},
--	swap = {
--	  enable = true,
--	  swap_next = {
--		["<leader>a"] = "@parameter.inner",
--	  },
--	  swap_previous = {
--		["<leader>A"] = "@parameter.inner",
--	  },
--	},
--  },
--  indent = {
--    enable = true,
--  },
--  incremental_selection = {
--    enable = true,
--    keymaps = {
--      init_selection = '<CR>',
--      scope_incremental = '<CR>',
--      node_incremental = '<TAB>',
--      node_decremental = '<S-TAB>',
--    },
--  },
}
--require('neogen').setup {
--	enabled = true,
--}
EOF
