return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
        build = ":TSUpdate",

        config = function()
            -- import nvim-treesitter plugin
            local treesitter = require("nvim-treesitter.configs")

            -- configure treesitter
            treesitter.setup({ -- enable syntax highlighting
                -- ensure these language parsers are installed
                ensure_installed = {
                    "c",
                    "python",
                    "lua",
                    "vim",
                    "vimdoc",
                    "gitignore",
                },

                auto_install = true,
                highlight = { enable = true },
                indent = { enable = true },

                -- Install parsers synchronously (only applied to `ensure_installed`)
                sync_install = false,
            })
        end,
    },
}
