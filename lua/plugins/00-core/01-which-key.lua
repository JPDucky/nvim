return {
  'folke/which-key.nvim',
  event = "VeryLazy",
  opts = {
    preset = "helix",
    delay = function(ctx)
      return ctx.plugin and 0 or 200
    end,
    notify = true,
    plugins = {
      marks = true,
      registers = true,
      spelling = {
        enabled = true,
        suggestions = 20,
      },
      presets = {
        operators = true,
        motions = true,
        text_objects = true,
        windows = true,
        nav = true,
        z = true,
        g = true,
      },
    },
    win = {
      no_overlap = true,
      padding = { 1, 2 },
      title = true,
      title_pos = "center",
      zindex = 1000,
      bo = {},
      wo = {},
    },
    layout = {
      width = { min = 20 },
      spacing = 3,
    },
  keys = {
    scroll_up = "<c-u>",
    scroll_down = "<c-d>",
  },
  sort = { "local", "order", "group", "alphanum", "mod" },
  debug = false,
  },
}
