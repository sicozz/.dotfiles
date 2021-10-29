-- Author: sicozz
-- LuaFormatter off
local colors = {
  color0   = '#14171a',
  color2   = '#379d48',
  color4   = '#103050',
  color6   = '#1f4f8a',
  color7   = '#c0c6cb',
  color8   = '#181d22',
  color15  = '#ffffff',
  grey     = '#68788a',
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
    c = {fg = colors.color7, bg = colors.color8},
    a = {fg = colors.color15, bg = colors.color4, gui = 'bold'},
    b = {fg = colors.grey, bg = colors.color0}
  },
  insert = {
    a = {fg = colors.color15, bg = colors.color6, gui = 'bold'},
    b = {fg = colors.grey, bg = colors.color0}
  }
}
