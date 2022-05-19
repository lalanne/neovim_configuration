vim.keymap.set('n', 'gt', ':bnext<CR>')
vim.keymap.set('n', 'gT', ':bprevious<CR>')

require('bufferline').setup {
  options = {
    mode = "tabs", -- set to "buffers" to only show buffers instead
    numbers = function(opts)
		return string.format('%s.', opts.ordinal)
	  end,
    indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
    tab_size = 18,
    diagnostics = 'nvim_lsp',
    diagnostics_update_in_insert = false,
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      return '('..count..')'
    end,
	offsets = { { filetype = 'NvimTree', text_align = 'left' } },
	show_buffer_icons = true,
	show_buffer_close_icons = true,
	show_close_icon = false,
	show_tab_indicators = true,
	persist_buffer_sort = false,
	enforce_regular_tabs = true,
	always_show_bufferline = true,
	sort_by = 'tabs',
	}
}

