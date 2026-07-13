local command = {}

function command.exec(cmd)
    return hl.dsp.exec_cmd(cmd)
end

return command