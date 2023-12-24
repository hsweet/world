\version "2.7.40"
\include "english.ly"
\pointAndClickOff
date = #(strftime "%d-%m-%Y" (localtime (current-time)))
\markup{ \italic{ \date }  }


\header {
    tagline = ##f
  crossRefNumber = "2"
  footnotes = ""
  %meter = "horra"
  origin = "Rob Mendel"
  %subtitle = "Rob Mendel"
instrument = "F Horn"
  tagline = "Lily was here 2.22.2 -- automatically converted from ABC"
  title = "Firn di Mekhutonim Ahem"
instrument = "F Horn"
  transcription = "John Chambers <jc:trillian.mit.edu> http://trillian.mit.edu/~jc/music/"
}
voicedefault =  {
  \set Score.defaultBarType = ""

  \time 3/8 \key d \phrygian   \repeat volta 2 {
    \mark \default
    fs'4 ^"D" \times 2/3 {
      ef'16    d'16    c'16
    }   \bar "|"   d'4.   ~        \bar "|"   d'8[    bf'8
    a'8]    \bar "|"     g'8. ^"Gm"[   g'16]    fs'16[    a'16]        \bar "|"
    g'4    \times 2/3 {   ef'16    d'16    c'16  }   \bar "|"     c'4. ^"Cm"
    \bar "|"   c'8[    a'8    g'8]    \bar "|"     fs'4 ^"D"   \times 2/3 {
      ef'16    d'16    c'16
    }       \bar "|"   d'8.[    f'16]    a'16[    g'16]
    \bar "|"   fs'8.[    a'16]    c''16[    bf'16]    \bar "|"     \bar "|"
    a'8.[    c''16]    ef''16[    d''16]    \bar "|"   c''8.[    bf'16]    a'16[
    g'16]        \bar "|"   fs'8.[    g'16]    a'16[    g'16]    \bar "|"
    fs'8. ^"Cm"[   ef'16]    d'16[    c'16]        \bar "|"     d'8. ^"D"[
    d''16]    a'16[    fs'16]    \bar "|"   d'8    r8 \times 2/3 {
      d'16    d'16
      d'16
    }
    \break
  } \repeat volta 2 {
    \mark \default
    d'8 ^"D"[   bf'8    a'8]    \bar "|"
    g'8. ^"Gm"[   d'16]    g'16[    d'16]        \bar "|"   g'4.   ~    \bar "|"
    g'4.        \bar "|"   g'8[    ef''8    d''8]    \bar "|"     \bar "|"
    c''8. ^"Cm"[   g'16]    c''16[    g'16]    \bar "|"   c''4.   ~        \bar "|"
    c''8.[    bf'16]    bf'16[    a'16]    \bar "|"   a'16[    c''16    c''16
    bf'16    bf'16    a'16]        \bar "|"     a'16 ^"D"[   c''16    c''16
    bf'16    bf'16    a'16]    \bar "|"   a'4.   ~        \bar "|"   a'8.[
    bf'16]    a'16[    g'16]    \bar "|"   fs'16[    a'16    a'16    g'16    g'16
    fs'16]        \bar "|"   fs'16[    a'16    a'16    g'16    g'16    fs'16]
    \bar "|"     \bar "|"   fs'4.   ~    \bar "|"   f'8.[    ef'16]
    \times 2/3 {   ef'16 ^"Cm"   d'16    c'16  }       \bar "|"     d'8. ^"D"[
    f'16]    a'16[    g'16]    \bar "|"   fs'8.[    a'16]    c''16[    bf'16]
    \bar "|"   a'8.[    c''16]    ef''16[    d''16]    \bar "|"   c''8.[
    bf'16]    a'16[    g'16]        \bar "|"   fs'8.[    g'16]    a'16[    g'16]
    \bar "|"     fs'8. ^"Cm"[   ef'16]    d'16[    c'16]    \bar "|"
    \bar "|"     d'8. ^"D"[   d''16]    a'16[    fs'16]    \bar "|"   d'8    r8
    d'16[    d'16]

    \break
  } \repeat volta 2 {
    \mark \default
    d''4. ^"Gm"  ~    \bar "|"
    d''4.   ~        \bar "|"   d''4.   ~    \bar "|"   d''4    c''8
    \bar "|"     bf'4. ^"Gm"  ~    \bar "|"   bf'4    a'8        \bar "|"
    g'4. ^"(Cm)"  ~    \bar "|"   g'4    f'8        \bar "|"     ef'4. ^"Cm"  ~
    \bar "|"   ef'4    d'8        \bar "|"   c'4.   ~    \bar "|"   c'4.
    \bar "|"     a'4 ^"D"   a'8    \bar "|"   a'4    \times 2/3 {
      bf'16    a'16
      g'16
    }       \bar "|"   fs'4    fs'8    \bar "|"     \bar "|"   fs'4
    \times 2/3 {   ef'16 ^"Cm"   d'16    c'16  }   \bar "|"     d'8. ^"D"[   f'16]
    a'16[    g'16]        \bar "|"   fs'8.[    a'16]    c''16[    bf'16]
    \bar "|"   a'8.[    c''16]    ef''16[    d''16]        \bar "|"   c''8.[
    bf'16]    a'16[    g'16]    \bar "|"   fs'8.[    g'16]    a'16[    g'16]
    \bar "|"     fs'8. ^"Cm"[   ef'16]    ef'16[    d'16]    \bar "|"     d'8.
    ^"D"[   d''16]    a'16[    fs'16]        \bar "|"   d'8    r8   r8
  }

  }
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
