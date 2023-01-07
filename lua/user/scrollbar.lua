-- Setup nvim-scrollbar.
local status_ok, nscroll = pcall(require, "scrollbar")
if not status_ok then
  return
end

nscroll.setup()
