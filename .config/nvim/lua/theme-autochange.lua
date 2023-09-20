local function set_theme(theme)
    if theme == "dark" then
        vim.cmd[[colorscheme tokyonight-night]]
    else
        vim.cmd[[colorscheme tokyonight-day]]
    end
end

local function on_darkman_output(_, data, _)
    local theme = data[1]
    set_theme(theme)

    vim.fn.timer_start(2000, function()
        local job_id = vim.fn.jobstart({"darkman", "get"}, {
            on_stdout = on_darkman_output,
            stdout_buffered = true,
        })
    end)
end

vim.fn.jobstart({"darkman", "get"}, {
    on_stdout = on_darkman_output,
    stdout_buffered = true,
})
