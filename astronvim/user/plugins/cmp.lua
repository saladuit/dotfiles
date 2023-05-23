local cmp = require('cmp')

return {
    cmp.setup {
        sources = {
            -- Copilot Source
            { name = "copilot", group_index = 2 },
        },
        formatting = {
            format = require("lspkind").cmp_format({
                mode = "symbol",
                symbol_map = { Copilot = '' }
            })
        },
    }
}
