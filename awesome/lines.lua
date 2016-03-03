local wibox = require('wibox')

-- local lefthardarrow = "\xee\x82\xb2"
-- local leftsoftarrow = "\xee\x82\xb3"

function hexify(s)
    return s:gsub("\\x(%x%x)",function (x) return string.char(tonumber(x,16)) end)
end

local lefthardarrow = hexify("\\xee\\x82\\xb2")
local leftsoftarrow = hexify("\\xee\\x82\\xb3")

lines = {
  lastbg = nil,
  font = 'Terminess Powerline 8',
  bigfont = 'Terminess Powerline 14'
}

function lines:setlastbg(color)
  self.lastbg = color
end

function lines:arrow(bgcolor)
  local widget = wibox.widget.textbox()
  local txt =
    '<span color="' .. self.lastbg .. '" background="' .. bgcolor .. '" font="' .. self.bigfont .. '"> '
      .. lefthardarrow ..
    '</span>'

  widget:set_markup(txt)

  return {
    widget = widget,
    markup = txt
  }
end


function lines:format(text, color, bgcolor)
  local txt =
      '<span rise="2000" color="' .. color .. '" font="' .. self.font .. '">'
        .. text ..
      '</span>'


  if self.lastbg then
    txt = txt .. self:arrow(bgcolor).markup
  end

  txt = '<span background="' .. bgcolor ..'" font="Arial 13"> ' .. txt .. '</span>'

  self.lastbg = bgcolor

  local widget = wibox.widget.textbox()
  widget:set_markup(txt)

  return {
    markup = txt,
    widget = widget
  }
end

function lines:wrapimg(imgbox, bgcolor)
  local bg   = wibox.widget.background()
  local vert = wibox.layout.align.vertical()

  vert:set_middle(img)

  bg:set_bg(bgcolor)
  bg:set_widget(imgbox)

  return bg
end

function lines:img(path, bgcolor)
  local img  = wibox.widget.imagebox()

  img:set_image(path)
  img:set_resize(false)

  return self:wrapimg(img, bgcolor)
end

return lines
