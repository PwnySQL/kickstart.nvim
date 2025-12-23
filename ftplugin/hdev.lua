-- Use XML syntax highlighting
-- vim.defer_fn(function()
--   vim.cmd 'set syntax=xml'
-- end, 0)
-- Redundant because this configures treesitter to use XML highlighting.
vim.treesitter.language.register('xml', { 'hdev' })

-- Add custom commands in registers.
-- Use \x1b as escape sequence for ^[ (ESC)
vim.fn.setreg('l', 'o<l></l>\x1bF<i', 'c')
vim.fn.setreg('c', 'o<c>* </c>\x1bF<i', 'c')
-- Use \x0D as escape sequence for ^M (carriage return)
-- Use \x12 as escape sequence for ^R (Ctrl+R)
vim.fn.setreg('r', 'k/^<c>.\\{70,\\}$\x0D0f>ly:call search("\\*", "cW")\x0D68|F cl</c>\x0D<c>\x120* \x1b', 'c')
