require("bufferline").setup {
  highlights = {
    buffer_selected = { italic = false },
    diagnostic_selected = { italic = false },
    hint_selected = { italic = false },
    pick_selected = { italic = false },
    pick_visible = { italic = false },
    pick = { italic = false },
  },
  options = {
    indicator = {
      -- icon = "",
      style = "underline",
    },
    separator_style = { "", "" },
    -- offsets = {
    --   {
    --     filetype = "NvimTree",
    --     text = "File Explorer",
    --     text_align = "center",
    --     padding = 1,
    --     separator = " ",
    --   },
    -- },
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 18,
    max_prefix_length = 8, -- prefix used when a buffer is deduplicated
    diagnostics = "nvim_lsp",
    show_buffer_icons = true, -- disable filetype icons for buffers
    show_buffer_close_icons = false,
    show_close_icon = false,
    persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    enforce_regular_tabs = true,
    diagnostics_indicator = function(count, level) -- diagnostics_dict, context
      local icon = level:match("error") and " " or " "
      return icon .. count
    end,
  }
}
