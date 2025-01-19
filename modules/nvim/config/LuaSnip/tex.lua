local in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
  s({trig = "env", snippetType = "autosnippet"},
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

  s({trig = "bmat", snippetType = "autosnippet"},
    fmta(
      "\\begin{bmatrix}<>\\end{bmatrix}",
      {
        i(1),
        i(2),
      }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "^", snippetType = "autosnippet"},
    fmta(
      "^{<>}",
      {
        i(1),
      }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "_", snippetType = "autosnippet"},
    fmta(
      "_{<>}",
      {
        i(1),
      }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "sq", snippetType = "autosnippet"},
    fmta(
      "\\sqrt{<>}",
      {
        i(1),
      }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "tt", snippetType = "autosnippet"},
    fmta(
      "\\text{<>}",
      {
        i(1),
      }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "ldd", snippetType = "autosnippet"},
    t(
      "\\ldots"
    ),
    {condition = in_mathzone}
  ),

  s({trig = "cdd", snippetType = "autosnippet"},
    t(
      "\\cdots"
    ),
    {condition = in_mathzone}
  ),

  s({trig = "sum", snippetType = "autosnippet"},
    fmta(
      "\\sum_{k=<>}^{<>}",
      {
        i(1),
        i(2),
      }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "in1", snippetType = "autosnippet"},
    fmta(
      "\\int_{<>}^{<>}",
      {
        i(1),
        i(2),
      }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "in2", snippetType = "autosnippet"},
    fmta(
      "\\iint_{<>}^{<>}",
      {
        i(1),
        i(2),
      }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "in3", snippetType = "autosnippet"},
    fmta(
      "\\iiint_{<>}^{<>}",
      {
        i(1),
        i(2),
      }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "=>", snippetType = "autosnippet"},
    t(
      "\\implies"
    ),
    {condition = in_mathzone}
  ),
}
