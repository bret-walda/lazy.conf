require("neorg").setup{
        load = {
            ["core.defaults"]={},
            ["core.concealer"]={},
            ["core.dirman"]={
                config = {
                    workspaces = {
                        notes = "~/notes",
                    },
                    default_workspace = "notes",
                    index = "index.norg",
                },
            },
            ["core.completion"]={
                config = {
                    engine = "nvim-cmp",
                }
            }

        },
    }
