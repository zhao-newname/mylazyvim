return {
  "nvim-lua/plenary.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    -- 创建自动命令，在每次打开或创建新文件时禁用自动格式化
    vim.api.nvim_create_autocmd({ "BufReadPre", "BufNewFile", "BufWritePre" }, {
      callback = function()
        vim.b.autoformat = false
      end,
    })
  end,
}
