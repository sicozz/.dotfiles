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
  dark   = '#18151c',
  grey    = '#2b2b2b',
  lime    = '#d6ebc7',
  red     = "#f87070",
  yellow  = '#ffe59e',
}
-- LuaFormatter on
return {
  visual = {
    a = {fg = colors.dark, bg = colors.red, gui = 'bold'},
    b = {fg = colors.lime, bg = colors.dark}
  },
  replace = {
    a = {fg = colors.dark, bg = colors.yellow, gui = 'bold'},
    b = {fg = colors.lime, bg = colors.dark}
  },
  inactive = {
    c = {fg = colors.lime, bg = colors.grey},
    a = {fg = colors.lime, bg = colors.grey, gui = 'bold'},
    b = {fg = colors.lime, bg = colors.grey}
  },
  normal = {
    c = {fg = colors.lime, bg = colors.dark},
    a = {fg = colors.lime, bg = colors.dark, gui = 'bold'},
    b = {fg = colors.lime, bg = colors.dark}
  },
  insert = {
    a = {fg = colors.lime, bg = colors.dark, gui = 'bold'},
    b = {fg = colors.lime, bg = colors.dark}
  }
}
