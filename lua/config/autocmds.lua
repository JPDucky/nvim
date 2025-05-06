-- Filetype detection for docker-compose
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = {
    "docker-compose*.{yaml,yml}",
    "*compose*.{yaml,yml}",
  },
  callback = function()
    vim.opt_local.filetype = "yaml.docker-compose"
  end,
})


-- Filetype detection for ansible files
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = {
    "*playbook*.{yaml,yml}",
    "*/playbooks/*.{yaml,yml}",
    "*/roles/*/tasks/*.{yaml,yml}",
    "*/roles/*/handlers/*.{yaml,yml}",
    "*/roles/*/vars/*.{yaml,yml}",
    "*/inventory/*{yaml,yml}"
  },
  callback = function()
    vim.opt_local.filetype = "yaml.ansible"
  end,
})


