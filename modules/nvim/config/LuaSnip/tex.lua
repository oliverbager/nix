local in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return 
{
  s({trig = "benv", snippetType = "autosnippet"},
    fmta(
      [[
      \begin{<>}
          <>
      \end{<>
      ]],
      {
        i(1),
        i(2),
        rep(1),
      }
    )
  ),

  s({trig = "dm", snippetType = "autosnippet"},
    fmta(
      [[
      \[
          <>
      \]
      ]],
      {
        i(1), 
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

  s({trig = "tt", snippetType = "autosnippet"},
    fmta(
      "\\text{<>}",
        {
          i(1),
        }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "ovr", snippetType = "autosnippet"},
    fmta(
      "\\overline{<>}",
      {
        i(1), 
      }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "vec", snippetType = "autosnippet"},
    fmta(
      "\\xoverarrow{<>}",
      {
        i(1), 
      }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "**", snippetType = "autosnippet"},
    fmta(
      "\\mathbf{<>}",
      {
        i(1), 
      }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "bb", snippetType = "autosnippet"},
    fmta(
      "\\mathbb{<>}",
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

  s({trig = "inf", snippetType = "autosnippet"},
    t(
      "\\infty"
    ),
    {condition = in_mathzone}
  ),

  s({trig = "=>", snippetType = "autosnippet"},
    t(
      "=>"
    ),
    {condition = in_mathzone}
  ),
}
