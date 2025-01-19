local in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
  s({trig = "ff"},
    fmta(
      "\\frac{<>}{<>}",
      {
        i(1),
        i(2),
      }
    ),
    {condition = in_mathzone}
  ),
}
