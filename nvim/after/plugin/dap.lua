local dap = require 'dap'
vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})

dap.adapters.onyx = {
    type = "executable";
    command = "/usr/bin/node";
    args = { "/home/brendan/dev/onyx/misc/vscode/out/debugAdapter.js" }
}

dap.configurations.onyx = {
    {
        type = "onyx",
        request = "attach",
        name = "Onyx Attach",
        socketPath = "/tmp/ovm-debug.0000",
        stopOnEntry = true,
    },
    {
        type = "onyx",
        request = "launch",
        name = "Onyx Launch",
        wasmFile = "out.wasm",
        workingDir = "${workspaceFolder}",
        stopOnEntry = true,
    }
}

local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

map("n", "<Leader>dc", "<Cmd>lua require'dap'.continue()<CR>")
map("n", "<Leader>db", "<Cmd>lua require'dap'.toggle_breakpoint()<CR>")
map("n", "<Leader>dn", "<Cmd>lua require'dap'.step_over()<CR>")
map("n", "<Leader>di", "<Cmd>lua require'dap'.step_into()<CR>")
map("n", "<Leader>do", "<Cmd>lua require'dap'.step_out()<CR>")
map("n", "<Leader>dB", "<Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
map("n", "<Leader>dL", "<Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
map("n", "<Leader>dr", "<Cmd>lua require'dap'.repl.open()<CR>")
map("n", "<Leader>dm", "<Cmd>lua require'dap'.run_to_cursor()<CR>")
map("n", "<Leader>dl", "<Cmd>lua require'dap'.run_last()<CR>")
map("n", "<Leader>dq", "<Cmd>lua require'dap'.terminate()<CR>")
map("n", "<Leader>dd", "<Cmd>lua require'dapui'.toggle()<CR>")

require("dapui").setup({
  icons = { expanded = "▾", collapsed = "▸" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
    toggle = "t",
  },
  -- Expand lines larger than the window
  -- Requires >= 0.7
  expand_lines = vim.fn.has("nvim-0.7"),
  -- Layouts define sections of the screen to place windows.
  -- The position can be "left", "right", "top" or "bottom".
  -- The size specifies the height/width depending on position. It can be an Int
  -- or a Float. Integer specifies height/width directly (i.e. 20 lines/columns) while
  -- Float value specifies percentage (i.e. 0.3 - 30% of available lines/columns)
  -- Elements are the elements shown in the layout (in order).
  -- Layouts are opened in order so that earlier layouts take priority in window sizing.
  layouts = {
    {
      elements = {
      -- Elements can be strings or table with id and size keys.
        { id = "scopes", size = 0.5 },
        { id = "stacks", size = 0.3 },
        { id = "breakpoints", size = 0.2 },
        -- "watches",
      },
      size = 60, -- 60 columns
      position = "left",
    },
    {
      elements = {
        "repl",
        "console",
      },
      size = 0.25, -- 25% of total lines
      position = "bottom",
    },
  },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil, -- Floats will be treated as percentage of your screen.
    border = "single", -- Border style. Can be "single", "double" or "rounded"
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 },
  render = {
    max_type_length = nil, -- Can be integer or nil.
  }
})

--[[

map("n", "<Leader>dd", "<Cmd>lua require'dap'.custom_toggle_debug()<CR>")

dap.custom_toggle_debug = function() 
    local widgets = require'dap.ui.widgets'

    local scope_sidebar  = widgets.sidebar(widgets.scopes, {}, "belowright vsplit")
    local frames_sidebar = widgets.sidebar(widgets.frames, {}, "belowright split")

    scope_sidebar.toggle()
    frames_sidebar.toggle()
end

--]]
