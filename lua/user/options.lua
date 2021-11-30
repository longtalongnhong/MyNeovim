local options = {
	backup		= false,			-- Don't create a backup file
	clipboard	= "unnamedplus", 		-- Allow neovim access the system clipboard
	cmdheight	= 2,				-- More space in the neovim command line
	completeopt	= { "menuone", "noselect" }, 	-- 'For' cmp
	conceallevel	= 0,				-- So that the '' is visible in markdown file
	fileencoding	= "UTF-8",			-- The encoding written to a file
	hidden		= true,				-- Required to keep multiple buffers
	hlsearch	= true,				-- Search highlighting
	ignorecase	= true,				-- Ignore 'case in' search patterns
	mouse		= "a",				-- Enable 'mouse'
	pumheight	= 10,				-- Pop up menu height
	showmode 	= false,			-- Hide the bar at the bottom
	showtabline 	= 2,				-- Always show tab
	smartcase	= true,				-- Smart case
	smartindent	= true,				-- Make indenting smarter
	splitbelow	= true,				-- Horizontal split
	splitright	= true,				-- Vertical split
	swapfile	= false, 			-- No need swap file
	termguicolors 	= true,				-- Colorful the neovim
	timeoutlen	= 100,				-- Time to wait for a mapped sequence
	updatetime	= 300,				-- Faster completion (4000ms default)
	writebackup	= false,			-- No need backup file
	expandtab	= true,				-- Convert tabs to spaces
	shiftwidth	= 2,				-- A tab = 2 spaces (4 is default)
	tabstop		= 2, 				-- Insert 2 spaces for a tab
	cursorline	= true,				-- Cursor line
	number		= true,
	relativenumber	= true,
	numberwidth	= 4,				
	signcolumn	= "yes",
	wrap		= false,			-- Display lines as one long line
	scrolloff	= 8,				-- Spaces when scroll off
	sidescrolloff	= 8, 				
	guifont		= "monospace:h17",		-- Font for the vim
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
