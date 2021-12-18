vim.cmd [[
  try 
    colorscheme darkplus
  catch /^Vim\%((\a\a+)\)\=:E185/
    colorscheme default
    set background=dark
  endtry
]]
