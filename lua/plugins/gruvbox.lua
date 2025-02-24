return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  opts = {
    -- gruvbox 配置选项
    bold = true,  -- 启用加粗
    contrast = "hard",  -- 增加对比度
    -- 自定义高亮组
    overrides = {
      -- 关键字
      Keyword = { bold = true },
      Type = { bold = true },
      Function = { bold = true },
      -- 运算符
      Operator = { bold = true },
      -- 语句
      Statement = { bold = true },
      -- 条件语句
      Conditional = { bold = true },
      -- 常量
      Constant = { bold = true },
      -- 特殊关键字
      Special = { bold = true },
      -- 预处理指令
      PreProc = { bold = true },
    },
  },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
