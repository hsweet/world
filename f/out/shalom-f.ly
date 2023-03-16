\version "2.18.0"
\language "english"
\header {
  crossRefNumber = "1"
  footnotes = ""
  tagline = ""
  title = "Shalom Aleichem"
}
voicedefault =  {
  \set Score.defaultBarType = "-"

  \override Staff.TimeSignature.style = #'C
  \time 4/4 \key e \minor   \bar "|"     b4 ^"Am"   g'8    fs'8    e'4    e'4
  \bar "|"     ds'8 ^"E7"   e'8    fs'8    e'8    ds'8    c'8    b4
  \bar "|"   ds'8    ds'8    ds'4      e'8 ^"Am"   ds'8    e'8    g'8
  \bar "|"     fs'2 ^"E7"   b'2    \bar "|"     \bar "|"     b4 ^"Am"   g'8
  fs'8    e'4    e'4    \bar "|"     ds'8 ^"E7"   e'8    fs'8    e'8    ds'8
  c'8    b4    \bar "|"     a4 ^"Dm"   e'4    ds'4    c'8  \grace {
    b8
    c'8
  }   a8    \bar "|"     b2. ^"E7"   r4   \bar "|"     \bar "|"     g'8
  ^"C"   a'8    b'4    b'4    b'4    \bar "|"     a'8 ^"G7"   g'8    fs'8
  g'8      a'8 ^"E7"   b'8    a'4    \bar "|"     g'8 ^"Am"   fs'8    e'8
  fs'8    g'8    b'8    a'8    g'8    \bar "|"     fs'2. ^"E7"   r4   \bar "|"
  \bar "|"     fs'4 ^"Dm"   a'4    a'4    a'4    \bar "|"     a'8 ^"E7"
  c''8    b'8    a'8      g'8 ^"Am"   fs'8    e'8    b8    \bar "|"   g'4
  fs'8    e'8      fs'4 ^"E7"   e'8    ds'8    \bar "|"     e'2. ^"Am"   r4
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
