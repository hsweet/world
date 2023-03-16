\version "2.7.40"
\include "english.ly"
date = #(strftime "%d-%m-%Y" (localtime (current-time)))
\markup{ \italic{ \date }  }


\header {
    tagline = ##f
  crossRefNumber = "2"
  footnotes = ""
  %meter = "horra"
  origin = "Rob Mendel"
  %subtitle = "Rob Mendel"
  tagline = "Lily was here 2.22.2 -- automatically converted from ABC"
  title = "Firn di Mekhutonim Ahem"
  transcription = "John Chambers <jc:trillian.mit.edu> http://trillian.mit.edu/~jc/music/"
}
voicedefault =  {
  \set Score.defaultBarType = ""

  \time 3/8 \key a \phrygian   \repeat volta 2 {
    \mark \default
    cs'4 ^"D" \times 2/3 {
      bf16    a16    g16
    }   \bar "|"   a4.   ~        \bar "|"   a8[    f'8
    e'8]    \bar "|"     d'8. ^"Gm"[   d'16]    cs'16[    e'16]        \bar "|"
    d'4    \times 2/3 {   bf16    a16    g16  }   \bar "|"     g4. ^"Cm"
    \bar "|"   g8[    e'8    d'8]    \bar "|"     cs'4 ^"D"   \times 2/3 {
      bf16    a16    g16
    }       \bar "|"   a8.[    c'16]    e'16[    d'16]
    \bar "|"   cs'8.[    e'16]    g'16[    f'16]    \bar "|"     \bar "|"
    e'8.[    g'16]    bf'16[    a'16]    \bar "|"   g'8.[    f'16]    e'16[
    d'16]        \bar "|"   cs'8.[    d'16]    e'16[    d'16]    \bar "|"
    cs'8. ^"Cm"[   bf16]    a16[    g16]        \bar "|"     a8. ^"D"[
    a'16]    e'16[    cs'16]    \bar "|"   a8    r8 \times 2/3 {
      a16    a16
      a16
    }
    \break
  } \repeat volta 2 {
    \mark \default
    a8 ^"D"[   f'8    e'8]    \bar "|"
    d'8. ^"Gm"[   a16]    d'16[    a16]        \bar "|"   d'4.   ~    \bar "|"
    d'4.        \bar "|"   d'8[    bf'8    a'8]    \bar "|"     \bar "|"
    g'8. ^"Cm"[   d'16]    g'16[    d'16]    \bar "|"   g'4.   ~        \bar "|"
    g'8.[    f'16]    f'16[    e'16]    \bar "|"   e'16[    g'16    g'16
    f'16    f'16    e'16]        \bar "|"     e'16 ^"D"[   g'16    g'16
    f'16    f'16    e'16]    \bar "|"   e'4.   ~        \bar "|"   e'8.[
    f'16]    e'16[    d'16]    \bar "|"   cs'16[    e'16    e'16    d'16    d'16
    cs'16]        \bar "|"   cs'16[    e'16    e'16    d'16    d'16    cs'16]
    \bar "|"     \bar "|"   cs'4.   ~    \bar "|"   c'8.[    bf16]
    \times 2/3 {   bf16 ^"Cm"   a16    g16  }       \bar "|"     a8. ^"D"[
    c'16]    e'16[    d'16]    \bar "|"   cs'8.[    e'16]    g'16[    f'16]
    \bar "|"   e'8.[    g'16]    bf'16[    a'16]    \bar "|"   g'8.[
    f'16]    e'16[    d'16]        \bar "|"   cs'8.[    d'16]    e'16[    d'16]
    \bar "|"     cs'8. ^"Cm"[   bf16]    a16[    g16]    \bar "|"
    \bar "|"     a8. ^"D"[   a'16]    e'16[    cs'16]    \bar "|"   a8    r8
    a16[    a16]

    \break
  } \repeat volta 2 {
    \mark \default
    a'4. ^"Gm"  ~    \bar "|"
    a'4.   ~        \bar "|"   a'4.   ~    \bar "|"   a'4    g'8
    \bar "|"     f'4. ^"Gm"  ~    \bar "|"   f'4    e'8        \bar "|"
    d'4. ^"(Cm)"  ~    \bar "|"   d'4    c'8        \bar "|"     bf4. ^"Cm"  ~
    \bar "|"   bf4    a8        \bar "|"   g4.   ~    \bar "|"   g4.
    \bar "|"     e'4 ^"D"   e'8    \bar "|"   e'4    \times 2/3 {
      f'16    e'16
      d'16
    }       \bar "|"   cs'4    cs'8    \bar "|"     \bar "|"   cs'4
    \times 2/3 {   bf16 ^"Cm"   a16    g16  }   \bar "|"     a8. ^"D"[   c'16]
    e'16[    d'16]        \bar "|"   cs'8.[    e'16]    g'16[    f'16]
    \bar "|"   e'8.[    g'16]    bf'16[    a'16]        \bar "|"   g'8.[
    f'16]    e'16[    d'16]    \bar "|"   cs'8.[    d'16]    e'16[    d'16]
    \bar "|"     cs'8. ^"Cm"[   bf16]    bf16[    a16]    \bar "|"     a8.
    ^"D"[   a'16]    e'16[    cs'16]        \bar "|"   a8    r8   r8
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
