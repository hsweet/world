\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

\markup{AA BB C DD EE FF}

%#################################### Melody ########################
melody = \transpose a, g, \relative c' {
  \set Score.markFormatter = #format-mark-box-alphabet
  \clef treble
  \key d \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    \mark \default
    r4  _\markup {\italic{"Bulgar #1"}} cs8 d cs4 \prall b
    cs4 d e2
    d1~
    d1

    r4 cs8 d cs4 \prall b
    cs4 d cs2

  }
  \alternative {
    {
      b1~
      b1
    }
    {
      b1~
      b4 r4  a4 r4
    }
  }

  \repeat volta 2{
  \mark \default
    \mark \default
    d2-> fs->
    e8(fs)e(fs) e4\prall  d8 (cs)|
    cs2-> e->
    d8(e) d(e) d4\prall cs8(b)

    r4 cs8 d cs4 \prall b
  }
  \alternative { {cs4 d e2 d1~d4 r a r }{cs4 d cs2 b1~b1 } }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Bulgar 2%%%%%%%%%%%%%
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  \bar "||"
  \mark \default
  b'8^\markup {\italic{ "Bulgar #2"}} b4.
  fs4 fs
  as4 b
  cs2

  b2~b2~b2~b4 r

  cs8 cs4.
  e4 d
  cs4 b
  b8[(a gs a)]

  fs2~fs2~fs2~fs4 r

  \repeat volta 2{
  \mark \default
    \mark \default  %D section
    b8 b4.
    c4 b
    b4 a
    a4 g8 fs

    e8 g4.~
    g2~g2~ g4. g8
  }

  \alternative{
    {
      fs8 fs4.
      a4 g8 fs
      e4 d8 cs
      g'2
      fs2~fs2~fs2~fs4. r8
    }
    {
      cs8 cs4.
      a'4 g
      fs4 e8(fs)
      e8[(d cs d)]
      b2~b2~b2~b4. r8
    }
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Bulgar 3%%%%%%%%%%%5

  \bar ".|:"
  \repeat volta 2{
  \mark \default
    \mark \default  %Section E
    r8 ^\markup {\italic{"Bulgar #3"}} a' [a g]
    fs4 a
    d2~d2~d2~d8 [cs d ds]
    e4 cs
    b4. as8|
    a2~a2~a2~a2
    \bar ".|:"
  }
  \repeat volta 2{
  \mark \default
    \mark \default
    \bar ":..:"
    cs8(d)d4
    d4 d
    d4 c
    b4\trill a

    as8(b)b4
    b4 b
    b4 a
    g4 \trill fs

    gs8(a)a4
    a4 gs
    g2~g2~g2~g8 [fs g gs]
    a4 fs
    % }
  }
  \alternative {
    {
      b4. as8
      a2~a2~a2~a2
    }
    {
      e4. ds8
      d2~d2~d2~d2 _\markup {\italic \bold {"D.C."}}
    }
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Bulgar 4%%%%%%%%%55
  %{
    \bar "||"
    r4 ^\markup{ \box "Bulgar #4"} g8(b)
    d8 d d d
    d8 d4.
    ~d2

    g8 fs ds\prall d
    fs4. ds16(fs)|
    ds4 d~
    d2

    g8 f e e
    d8 e d16(c b a)
    a2~
    a2

    r8 b16(c)d8 b
    g'8 fs \grace fs (ds4)
    d2~
    d2

    g8 f e e
    d8 e d16(c b a)
    a2~
    a2

    r8 b16(c)d8 b
    c8 b ds,4
    g2~
    g2
  %}

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {

  a1*5:m
  e1:7
  a4*15:m g4
  %B
  c1
  d1:m
  e1:7
  a1*2:m
  e1:7
  a4*7:m g4
  e1:7
  a1*2:m
  %C
  a2*3:m
  e2
  a2*4:m
  e2
  d2:m
  e2
  g2
  c2*4
  %D
  a2*4:7
  d2*4:m
  e2*2:7
  d2*2:m
  e2*4:7
  d2*2:m
  e2*2:7
  a4*7:m
  g4
  %E
  c2*6
  d2*2
  g2*4
  %F
  c4*5 c4:7
  c2
  f2*4
  g2*2
  f2*4
  g2*2
  c2*4
  c2*4

  %{Judy's Chords
  d2*3:m
  g2:m
  d1*3:m
  a1:7
  d1*2:m
  d4*7 c4
  %b
  f1
  g1:m
  a2 a2:7
  d1*2:m
  a1:7
  %1st ending
  d4*7:m
  c4
  %2nd end
  a1:7
  d1*2:m
  %2
  d2*3:m
  a2
  d2*4:m
  a2
  g2:m
  a2
  c2
  f2*4
  %b
  d2*4:7
  g2*4:m
  a2*2:7
  g2*2:m
  a2*4:7
  g2*3:m
  %d2:m
  a2:7
  d4*7:m
  c4
  %
  f2*6
  g2*2
  c2*4
  %dbl bar 72
  f4*5
  f4:7
  bf4
  f4
  bf4*5
  f4
  bf4
  f4
  c2*2
  bf2*4
  c2*2
  f2*10
  %}
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Bulgar Medley"
    subtitle=""
    composer= "German Goldensyteyn"
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 180

    % \midi { }
  }
}

