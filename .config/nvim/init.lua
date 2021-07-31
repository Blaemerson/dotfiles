local modules = {
    "options",
    "theme",
    "keymap",
    "util"
}
for i = 1, #modules, 1 do
    pcall(require, modules[i])
end
