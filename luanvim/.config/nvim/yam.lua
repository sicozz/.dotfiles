-- Author: sicozz
-- LuaFormatter off
local colors = {
  color0   = '#18151c',
  color2   = '#79dcaa',
  color3   = '#ffe59e',
  color4   = '#52de97',
  color6   = '#d6ebc7',
  color7   = '#e9d5c1',
  color8   = '#d4d4d5',
  color15  = '#18151c',
  grey     = '#d4d4d5',
  lime    = '#d6ebc7',
  black   = '#18151c',
}
-- LuaFormatter on
return {
  visual = {
    a = {fg = colors.color0, bg = colors.color7, gui = 'bold'},
    b = {fg = colors.grey, bg = colors.color0}
  },
  replace = {
    a = {fg = colors.color15, bg = colors.color2, gui = 'bold'},
    b = {fg = colors.grey, bg = colors.color0}
  },
  inactive = {
    c = {fg = colors.grey, bg = colors.color0},
    a = {fg = colors.color15, bg = colors.color4, gui = 'bold'},
    b = {fg = colors.grey, bg = colors.color0}
  },
  normal = {
    c = {fg = colors.lime, bg = colors.black},
    a = {fg = colors.black, bg = colors.lime, gui = 'bold'},
    b = {fg = colors.lime, bg = colors.black}
  },
  insert = {
    a = {fg = colors.color0, bg = colors.color3, gui = 'bold'},
    b = {fg = colors.grey, bg = colors.color0}
  }
}
