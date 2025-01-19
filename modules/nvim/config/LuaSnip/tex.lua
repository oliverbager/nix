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
      \end{<>}
      ]],
      {
        i(1),
        i(2),
        rep(1),
      }
    )
  ),

  s({trig = "dm", snippetType = "autosnippet", wordTrig = false},
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

  s({trig = "ff", snippetType = "autosnippet", wordTrig = false},
    fmta(
      "\\frac{<>}{<>}",
      {
        i(1),
        i(2),
      }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "bmat", snippetType = "autosnippet", wordTrig = false},
    fmta(
      "\\begin{bmatrix}<>\\end{bmatrix}",
        {
          i(1),
        }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "^", snippetType = "autosnippet", wordTrig = false},
    fmta(
      "^{<>}",
        {
          i(1),
        }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "_", snippetType = "autosnippet", wordTrig = false},
    fmta(
      "_{<>}",
        {
          i(1),
        }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "tt", snippetType = "autosnippet", wordTrig = false},
    fmta(
      "\\text{<>}",
        {
          i(1),
        }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "ovr", snippetType = "autosnippet", wordTrig = false},
    fmta(
      "\\overline{<>}",
      {
        i(1), 
      }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "vec", snippetType = "autosnippet", wordTrig = false},
    fmta(
      "\\xoverarrow{<>}",
      {
        i(1), 
      }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "**", snippetType = "autosnippet", wordTrig = false},
    fmta(
      "\\mathbf{<>}",
      {
        i(1), 
      }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "bb", snippetType = "autosnippet", wordTrig = false},
    fmta(
      "\\mathbb{<>}",
      {
        i(1), 
      }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "sq", snippetType = "autosnippet", wordTrig = false},
    fmta(
      "\\sqrt{<>}",
      {
        i(1), 
      }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "in1", snippetType = "autosnippet", wordTrig = false},
    fmta(
      "\\int_{<>}^{<>}",
      {
        i(1),
        i(2),
      }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "in2", snippetType = "autosnippet", wordTrig = false},
    fmta(
      "\\iint_{<>}^{<>}",
      {
        i(1),
        i(2),
      }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "in3", snippetType = "autosnippet", wordTrig = false},
    fmta(
      "\\iiint_{<>}^{<>}",
      {
        i(1),
        i(2),
      }
    ),
    {condition = in_mathzone}
  ),

  s({trig = "inf", snippetType = "autosnippet", wordTrig = false},
    t(
      "\\infty"
    ),
    {condition = in_mathzone}
  ),

  s({trig = "=>", snippetType = "autosnippet", wordTrig = false},
    t(
      "\\implies"
    ),
    {condition = in_mathzone}
  ),
}
