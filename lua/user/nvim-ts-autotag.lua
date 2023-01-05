-- Setup nvim-cmp.
local status_ok, ntags = pcall(require, "nvim-ts-autotag")
if not status_ok then
  return
end

ntags.setup()
