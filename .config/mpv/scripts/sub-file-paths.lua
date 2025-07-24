local utils = require "mp.utils"
local langs = {"English", "Japanese",".eng" } 

function load_subs()
    local basedir = utils.split_path(mp.get_property("path"))
    local subsdir = basedir..'/Subs/'..mp.get_property("filename/no-ext")
    local subs = utils.readdir(subsdir, "files")
    if not subs or #subs == 0 then return end
    table.sort(subs)
    for _,lang in pairs(langs) do
        for _,sub in pairs(subs) do
            if string.match(sub:lower(), lang:lower()) then
                mp.commandv("sub-add", subsdir.."/"..sub, "auto", sub, lang:lower():sub(1,3))
            end
        end
    end
end

mp.register_event("start-file", load_subs)
