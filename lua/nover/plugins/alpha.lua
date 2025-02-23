


return{
	"goolord/alpha-nvim",
	lazy = false,
	config = function ()
         local alpha = require'alpha'
         local dashboard = require'alpha.themes.dashboard'
         dashboard.section.header.val = {
		[[					     	]],
		[[					     	]],
		[[     __                       o-°°|\_____/)	]],
		[[(___()'`; < Welcome to Neovim! \_/|_)     )	]],
		[[/,    /`                          \  __  / 	]],
		[[\\"--\\                           (_/ (_/  	]],
		[[					     	]],
		[[					     	]]

	}
         dashboard.section.buttons.val = {
             dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
             dashboard.button( "s", "  Search file" , ":Telescope find_files<CR>"),
	     dashboard.button( "o", "  Open directory", function()
				local dname = vim.fn.input("Dir: ", "", "file")
				local cmd = "Neotree dir=" .. dname
				vim.cmd(cmd)

			end),
             dashboard.button( "q", "󰅚  Quit NVIM" , ":qa<CR>"),
         }
         local handle = io.popen('fortune')
         local fortune = handle:read("*a")
         handle:close()
         dashboard.section.footer.val = fortune

         dashboard.config.opts.noautocmd = true

         vim.cmd[[autocmd User AlphaReady echo 'ready']]

         alpha.setup(dashboard.config)
     end

}
