local in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
  s({trig = "ff", snippetType = "autosnippet"},
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

-- return {
--   s({trig = "bmat", snippetType = "autosnippet"},
--     fmta(
--       "\\begin{bmatrix}<>\\end{bmatrix}",
--       {
--         i(1),
--       }
--     )
--     {condition = in_mathzone}
--   ),
-- }

return {
s({trig = "env", snippetType="autosnippet"},
  fmta(
    [[
      \begin{<>}
          <>
      \end{<>}
    ]],
    {
      i(1),
      i(2),
      rep(1),
    }
  )
),
}
