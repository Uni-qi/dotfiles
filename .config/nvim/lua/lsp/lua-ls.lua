-- https://github.com/sumneko/lua-language-server/wiki/Build-and-Run-(Standalone)


require'lspconfig'.sumneko_lua.setup {
    cmd = {"/home/niki/.config/nvim/lua-language-server/bin/Linux/lua-language-server", "-E", "/home/niki/.config/nvim/lua-language-server/main.lua"};
    -- on_attach = require'lsp'.common_on_attach,
    settings = {
    Lua = {
    --   runtime = {
    --     -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
    --     version = 'LuaJIT',
    --     -- Setup your lua path
    --     path = vim.split(package.path, ';')
    --   },
      diagnostics = {
    --     -- Get the language server to recognize the `vim` global
        globals = { 'vim' }
      },
    --   workspace = {
    --     -- Make the server aware of Neovim runtime files
    --     library = {
    --       [vim.fn.expand('$VIMRUNTIME/lua')] = true,
    --       [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
    --     },
    --   },
    --   -- Do not send telemetry data containing a randomized but unique identifier
    --   telemetry = {
    --     enable = false,
    --   },
    },
  },
}
