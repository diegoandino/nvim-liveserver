local function serve()
    local currentFile = vim.fn.expand("%:p")
    print("Serving... ")
    vim.cmd('terminal')
    local cmd = ':call jobsend(b:terminal_job_id, "live-server ' .. currentFile .. '\\n")' 
    vim.cmd(cmd)
end

vim.cmd [[ command! LiveServer lua require"nvim-liveserver".serve() ]]

return {
    serve = serve
}
