return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  {
    "vinicius507/header42.nvim",
    config = function()
      local header = require "header42"
      header.setup {
        login = "safoh",
        email = "safoh@student.codam.nl",
      }
    end,
  },
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}

-- local TEMPLATE = {
-- 	"********************************************************************************",
-- 	"*                                                                              *",
-- 	"*                                                     .--.  _                  *",
-- 	"*    @FILENAME..................................     |o_o || |                 *",
-- 	"*                                                    |:_/ || |_ _   ___  __    *",
-- 	"*    By: @AUTHOR................................    //   \\ \\ __| | | \\ \\/ /    *",
-- 	"*                                                  (|     | )|_| |_| |>  <     *",
-- 	"*    Created: @CREATED_AT........ by @CREATED_BY  /\'\\_   _/`\\__|\\__,_/_/\\_\\    *",
-- 	"*    Updated: @UPDATED_AT........ by @UPDATED_BY  \\___)=(___/                  *",
-- 	"*                                                                              *",
-- 	"********************************************************************************",
-- }
