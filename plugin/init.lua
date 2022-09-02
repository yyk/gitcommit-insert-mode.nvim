local gitCommitInsertModeGroup = vim.api.nvim_create_augroup("GitCommitInsertMode", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
	pattern = "gitcommit",
	callback = function()
		vim.cmd("normal! ggO")
		vim.cmd("startinsert!")
	end,
	group = gitCommitInsertModeGroup,
})
