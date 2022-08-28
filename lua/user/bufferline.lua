local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferline.setup{
  options = {
    indicator = {
      icon = "▎",
      style ='icon'
    },
    separator_style = "thin",
    always_show_bufferline = true,
 }
}
