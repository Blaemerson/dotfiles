local modules = {
    "options",
    "theme",
    "packer.plugins",
    "util",
    "keymap"
}
for i = 1, #modules, 1 do
    pcall(require, modules[i])
end

