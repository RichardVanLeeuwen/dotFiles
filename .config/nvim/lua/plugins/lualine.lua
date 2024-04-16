return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    opts = {
        options = {
            icons_enabled = true,
            theme = 'gruvbox',
            component_separators = '|',
            section_separators = '',
        },
        sectionst = {
            lualine_a = {
                'buffers',
            }
        }
    },
}
