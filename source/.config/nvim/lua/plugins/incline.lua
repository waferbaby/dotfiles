return {
	"b0o/incline.nvim",
	opts = {
		render = function(props)
			local bufname = vim.api.nvim_buf_get_name(props.buf)
			return bufname ~= "" and vim.fn.fnamemodify(bufname, ":p") or "..."
		end,
	},
}
