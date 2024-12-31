local micro = import("micro")
local shell = import("micro/shell")

function onSave(bp)
    if bp.Buf:FileType() == "tex" then
        local path = string.match(bp.Buf:GetName(), "^(.*)/")

        local msg, err = shell.RunCommand("xelatex -output-directory=" .. path .. " " .. bp.Buf:GetName())

        if not (err == nil) then
            micro.TermMessage(msg)
        end
    end
end
