return 
{
  s({trig = "snipn", snippetType = "autosnippet"},
    fmta(
      [[
      s({trig = "<>", snippetType = "autosnippet"},
        fmta(
          "<>",
          {
            <> 
          }
        )
      ),
      ]],
      {
        i(1),
        i(2),
        i(3),
      }
    )
  ),

  s({trig = "snipm", snippetType = "autosnippet"},
    fmta(
      [[
      s({trig = "<>", snippetType = "autosnippet"},
        fmta(
          "<>",
          {
            <> 
          }
        ),
        {condition = in_mathzone}
      ),
      ]],
      {
        i(1),
        i(2),
        i(3),
      }
    )
  ),
}
