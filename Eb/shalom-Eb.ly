\version "2.18.0"
\header {
  crossRefNumber = "1"
  footnotes = ""
  tagline = ""
  title = "Shalom Aleichem"
}
voicedefault =  {
  \set Score.defaultBarType = "-"

  \override Staff.TimeSignature.style = #'C
  \time 4/4 \key fis \minor   \bar "|"     cis''4 ^"Am"   a''8    gis''8    fis''4    fis''4
  \bar "|"     eis''8 ^"E7"   fis''8    gis''8    fis''8    eis''8    d''8    cis''4
  \bar "|"   eis''8    eis''8    eis''4      fis''8 ^"Am"   eis''8    fis''8    a''8
  \bar "|"     gis''2 ^"E7"   cis'''2    \bar "|"     \bar "|"     cis''4 ^"Am"   a''8
  gis''8    fis''4    fis''4    \bar "|"     eis''8 ^"E7"   fis''8    gis''8    fis''8    eis''8
  d''8    cis''4    \bar "|"     b'4 ^"Dm"   fis''4    eis''4    d''8  \grace {
    cis''8
    d''8
  }   b'8    \bar "|"     cis''2. ^"E7"   r4   \bar "|"     \bar "|"     a''8
  ^"C"   b''8    cis'''4    cis'''4    cis'''4    \bar "|"     b''8 ^"G7"   a''8    gis''8
  a''8      b''8 ^"E7"   cis'''8    b''4    \bar "|"     a''8 ^"Am"   gis''8    fis''8
  gis''8    a''8    cis'''8    b''8    a''8    \bar "|"     gis''2. ^"E7"   r4   \bar "|"
  \bar "|"     gis''4 ^"Dm"   b''4    b''4    b''4    \bar "|"     b''8 ^"E7"
  d'''8    cis'''8    b''8      a''8 ^"Am"   gis''8    fis''8    cis''8    \bar "|"   a''4
  gis''8    fis''8      gis''4 ^"E7"   fis''8    eis''8    \bar "|"     fis''2. ^"Am"   r4
  \bar "|."
}

\score{
  <<

    \context Staff="default"
    {
      \voicedefault
    }

  >>
  \layout {
  }
  \midi {}
}
