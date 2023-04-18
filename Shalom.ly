\version "2.18.0"
\language "english"
\header {
  crossRefNumber = "1"
  footnotes = ""
  tagline = ""
  title = "Shalom Aleichem"
instrument = "Violin"
}
voicedefault =  {
  \set Score.defaultBarType = "-"

  \override Staff.TimeSignature.style = #'C
  \time 4/4 \key a \minor   \bar "|"     e'4 ^"Am"   c''8    b'8    a'4    a'4
  \bar "|"     gs'8 ^"E7"   a'8    b'8    a'8    gs'8    f'8    e'4
  \bar "|"   gs'8    gs'8    gs'4      a'8 ^"Am"   gs'8    a'8    c''8
  \bar "|"     b'2 ^"E7"   e''2    \bar "|"     \bar "|"     e'4 ^"Am"   c''8
  b'8    a'4    a'4    \bar "|"     gs'8 ^"E7"   a'8    b'8    a'8    gs'8
  f'8    e'4    \bar "|"     d'4 ^"Dm"   a'4    gs'4    f'8  \grace {
    e'8
    f'8
  }   d'8    \bar "|"     e'2. ^"E7"   r4   \bar "|"     \bar "|"     c''8
  ^"C"   d''8    e''4    e''4    e''4    \bar "|"     d''8 ^"G7"   c''8    b'8
  c''8      d''8 ^"E7"   e''8    d''4    \bar "|"     c''8 ^"Am"   b'8    a'8
  b'8    c''8    e''8    d''8    c''8    \bar "|"     b'2. ^"E7"   r4   \bar "|"
  \bar "|"     b'4 ^"Dm"   d''4    d''4    d''4    \bar "|"     d''8 ^"E7"
  f''8    e''8    d''8      c''8 ^"Am"   b'8    a'8    e'8    \bar "|"   c''4
  b'8    a'8      b'4 ^"E7"   a'8    gs'8    \bar "|"     a'2. ^"Am"   r4
  \bar "|."
}

\score{
  <<

    \context Staff="default"
    {
      \voicedefault
    }

  >>
  \midi{\tempo 4 = 120}
  \layout {
  }
}
