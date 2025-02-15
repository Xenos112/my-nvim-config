vim.g.colors_name = "vagabond"

local colors = {
  yami_umi = "#0A1829",
  shinju = "#223348",
  koi = "#2BA098",
  yurei = "#7A8FA3",
  kogarashi = "#C76A7A",
  sumi = "#DDBB55",
  tsuki = "#B3C6DF",
  mori = "#4B7B6D",
  yuyake = "#8D6A8E",
  hoshi = "#D0DCE6",
  tsuchi = "#6B594D",
}

vim.api.nvim_set_hl(0, "Normal", { fg = colors.tsuki, bg = colors.yami_umi })
vim.api.nvim_set_hl(0, "Comment", { fg = colors.yurei, italic = true })
vim.api.nvim_set_hl(0, "Keyword", { fg = colors.koi, bold = true })
vim.api.nvim_set_hl(0, "Function", { fg = colors.sumi })
vim.api.nvim_set_hl(0, "String", { fg = colors.mori })
vim.api.nvim_set_hl(0, "Error", { fg = colors.kogarashi, bg = colors.yami_umi })
