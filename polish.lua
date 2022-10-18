-- This function is run last and is a good place to configuring
-- augroups/autocommands and custom filetypes also this just pure lua so
-- anything that doesn't fit in the normal config locations above can go here
local function polish()
    -- Set up custom filetypes
    -- vim.filetype.add {
    --   extension = {
    --     foo = "fooscript",
    --   },
    --   filename = {
    --     ["Foofile"] = "fooscript",
    --   },
    --   pattern = {
    --     ["~/%.config/foo/.*"] = "fooscript",
    --   },
    -- }
    local autocmd = vim.api.nvim_create_autocmd
    autocmd({"VimLeave", "VimSuspend"}, {
        desc = 'resume cursor when leave neovim',
        callback = function()
        vim.o.guicursor = 'a:ver2'
      end
    })    
end
return polish
