require("conform").setup({
  formatters = {
    yamlfix = {
      -- Change where to find the command
      command = "~/.local/share/nvim/mason/packages",
      -- Adds environment args to the yamlfix formatter
      env = {
        YAMLFIX_SEQUENCE_STYLE = "block_style",
      },
    },
  




},
})
