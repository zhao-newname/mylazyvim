return {
  "dhananjaylatkar/cscope_maps.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("cscope_maps").setup({
      disable_maps = false,
      skip_input_prompt = true, -- "true" doesn't ask for input
      prefix = "<C-\\>", -- prefix to trigger maps
      cscope = {
        picker = "telescope",
        -- location of cscope db file
        db_file = "./cscope.out", -- DB or table of DBs
        -- NOTE:
        --   when table of DBs is provided -
        --   first DB is "primary" and others are "secondary"
        --   primary DB is used for build and project_rooter
        -- cscope executable
        exec = "cscope", -- "cscope" or "gtags-cscope"
        -- choose your fav picker
        picker = "quickfix", -- "quickfix", "telescope", "fzf-lua" or "mini-pick"
        -- size of quickfix window
        qf_window_size = 8, -- any positive integer
        -- position of quickfix window
        qf_window_pos = "bottom", -- "bottom", "right", "left" or "top"
        -- "true" does not open picker for single result, just JUMP
        skip_picker_for_single_result = false, -- "false" or "true"
        -- custom script can be used for db build
        db_build_cmd = { script = "default", args = { "-Rbkq" } },
        -- statusline indicator, default is cscope executable
        statusline_indicator = nil,
        -- try to locate db_file in parent dir(s)
        project_rooter = {
          enable = false, -- "true" or "false"
          -- change cwd to where db_file is located
          change_cwd = false, -- "true" or "false"
        },
      },
    })
  end,
}
