local present, lualine = pcall(require, 'lualine')
if not present then
    return
end

lualine.setup({
  options = {
    icons_enabled = true,
    theme = 'onedark',
    component_separators = { '', '' },
    section_separators = { '', '' },
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'filename' },
    lualine_c = { 
      {
        'diagnostics',
        -- table of diagnostic sources, available sources:
        -- 'nvim_lsp', 'nvim_diagnostic', 'coc', 'ale', 'vim_lsp'
        -- Or a function that returns a table like
        --   {error=error_cnt, warn=warn_cnt, info=info_cnt, hint=hint_cnt}
        sources = { 'nvim_diagnostic' },
        -- displays diagnostics from defined severity
        sections = { 'error', 'warn', 'info', 'hint' },
        diagnostics_color = {
          -- Same values like general color option can be used here.
          error = 'DiagnosticError', -- changes diagnostic's error color
          warn  = 'DiagnosticWarn',  -- changes diagnostic's warn color
          info  = 'DiagnosticInfo',  -- changes diagnostic's info color
          hint  = 'DiagnosticHint',  -- changes diagnostic's hint color
        },
        symbols = { error = 'E', warn = 'W', info = 'I', hint = 'H' },
        colored = true, -- displays diagnostics status in color if set to true
        update_in_insert = false, -- Update diagnostics in insert mode
        always_visible = false, -- Show diagnostics even if count is 0, boolean or function returning boolean
      }
    },
    lualine_x = { 'encoding', 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  extensions = { 'nvim-tree' },
})
