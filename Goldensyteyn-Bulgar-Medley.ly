\version "2.18.0"
\include "english.ly"
%\pointAndClickOff
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

\markup{AA BB C DD EE FF}

%#################################### Melody ########################
melody = \transpose d c \relative c' {
  \set Score.markFormatter = #format-mark-box-alphabet
  \clef treble
  \key g \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    \mark \default
    r4  _\markup {\italic{"Bulgar #1"}} fs8 g fs4 \prall e
    fs4 g a2
    g1~
    g1

    r4 fs8 g fs4 \prall e
    fs4 g fs2

  }
  \alternative {
    {
      e1~
      e1
    }
    {
      e1~
      e4 r4  d4 r4
    }
  }

  \repeat volta 2{
  \mark \default
    \mark \default
    g2-> b->
    a8(b)a(b) a4\prall  g8 (fs)|
    fs2-> a->
    g8(a) g(a) g4\prall fs8(e)

    r4 fs8 g fs4 \prall e
  }
  \alternative { {fs4 g a2 g1~g4 r d r }{fs4 g fs2 e1~e1 } }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Bulgar 2%%%%%%%%%%%%%
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  \bar "||"
  \mark \default
  e'8^\markup {\italic{ "Bulgar #2"}} e4.
  b4 b
  ds4 e
  fs2

  e2~e2~e2~e4 r

  fs8 fs4.
  a4 g
  fs4 e
  e8[(d cs d)]

  b2~b2~b2~b4 r

  \repeat volta 2{
  \mark \default
    \mark \default  %D section
    e8 e4.
    f4 e
    e4 d
    d4 c8 b

    a8 c4.~
    c2~c2~ c4. c8
  }

  \alternative{
    {
      b8 b4.
      d4 c8 b
      a4 g8 fs
      c'2
      b2~b2~b2~b4. r8
    }
    {
      fs8 fs4.
      d'4 c
      b4 a8(b)
      a8[(g fs g)]
      e2~e2~e2~e4. r8
    }
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Bulgar 3%%%%%%%%%%%5

  \bar ".|:"
  \repeat volta 2{
  \mark \default
    \mark \default  %Section E
    r8 ^\markup {\italic{"Bulgar #3"}} d' [d c]
    b4 d
    g2~g2~g2~g8 [fs g gs]
    a4 fs
    e4. ds8|
    d2~d2~d2~d2
    \bar ".|:"
  }
  \repeat volta 2{
  \mark \default
    \mark \default
    \bar ":..:"
    fs8(g)g4
    g4 g
    g4 f
    e4\trill d

    ds8(e)e4
    e4 e
    e4 d
    c4 \trill b

    cs8(d)d4
    d4 cs
    c2~c2~c2~c8 [b c cs]
    d4 b
    % }
  }
  \alternative {
    {
      e4. ds8
      d2~d2~d2~d2
    }
    {
      a4. gs8
      g2~g2~g2~g2 _\markup {\italic \bold {"D.C."}}
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

  d1*5:m
  a1:7
  d4*15:m c4
  %B
  f1
  g1:m
  a1:7
  d1*2:m
  a1:7
  d4*7:m c4
  a1:7
  d1*2:m
  %C
  d2*3:m
  a2
  d2*4:m
  a2
  g2:m
  a2
  c2
  f2*4
  %D
  d2*4:7
  g2*4:m
  a2*2:7
  g2*2:m
  a2*4:7
  g2*2:m
  a2*2:7
  d4*7:m
  c4
  %E
  f2*6
  g2*2
  c2*4
  %F
  f4*5 f4:7
  f2
  bf2*4
  c2*2
  bf2*4
  c2*2
  f2*4
  f2*4

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
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}

