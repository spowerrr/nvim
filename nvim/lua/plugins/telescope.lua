return {
	{
  'nvim-telescope/telescope.nvim', 
  tag = '0.1.6',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')
     vim.api.nvim_set_keymap('n', '<C-p>', ':lua require("telescope.builtin").find_files()<CR>', { noremap = true })
     vim.api.nvim_set_keymap('n', '<leader>fg', ':lua require("telescope.builtin").live_grep()<CR>', { noremap = true })
   end
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
		  require("telescope").setup ({
                     extensions = {
                        ["ui-select"] = {
                             require("telescope.themes").get_dropdown {}
		        }
                     }
                  })
                  require("telescope").load_extension("ui-select")
		end
	},
}
