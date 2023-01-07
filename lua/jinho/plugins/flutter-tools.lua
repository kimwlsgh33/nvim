require("flutter-tools").setup({
  ui = {
    border = "rounded",
  },
  debugger = {
    enabled = true,
  },
  flutter_path = "/Users/gimjinho/development/flutter/bin/flutter",
  widget_guides = {
    enabled = true,
  },
  closing_tags = {
    highlight = "ErrorMsg",
    prefix = "==> ",
    enabled = true,
  },
  dev_log = {
    open_cmd = "tabedit",
  },
  outline = {
    open_cmd = "50vnew",
  },
  lsp = {
    settings = {
      showTodos = true,
      completeFunctionCalls = true,
      fixAll = {
        enabled = true,
      },
    },
  },
})
