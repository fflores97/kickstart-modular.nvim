return {
  'rmagatti/auto-session',
  config = function()
    vim.o.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions'
    require('auto-session').setup {
      log_level = 'error',
      auto_session_suppress_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
      auto_session_use_git_branch = true,
      auto_session_pre_save_cmds = { 'tabdo Neotre close' },
      sections = { lualine_c = { require('auto-session.lib').current_session_name } },
      session_lens = {
        bufftypes_to_ignore = {},
        load_on_setup = true,
        theme_conf = { border = true },
        previewer = false,
      },
    }

    vim.keymap.set('n', '<leader>ss', require('auto-session.session-lens').search_session, { noremap = false, desc = '[S]earch [S]essions' })
  end,
}
