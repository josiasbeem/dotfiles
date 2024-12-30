local micro = import("micro")
local shell = import("micro/shell")

function onSave(bp)
    if bp.Buf:FileType() == "tex" then
        local msg, err = shell.RunCommand("xelatex " .. bp.Buf:GetName())
        if not (err == nil) then
            micro.TermMessage(msg)
        end
    end
end
