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
melody = \transpose b a \relative c'' {
  \set Score.markFormatter = #format-mark-box-alphabet
  \clef treble
  \key e \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    \mark \default
    r4  _\markup {\italic{"Bulgar #1"}} ds8 e ds4 \prall cs
    ds4 e fs2
    e1~
    e1

    r4 ds8 e ds4 \prall cs
    ds4 e ds2

  }
  \alternative {
    {
      cs1~
      cs1
    }
    {
      cs1~
      cs4 r4  b4 r4
    }
  }

  \repeat volta 2{
  \mark \default
    \mark \default
    e2-> gs->
    fs8(gs)fs(gs) fs4\prall  e8 (ds)|
    ds2-> fs->
    e8(fs) e(fs) e4\prall ds8(cs)

    r4 ds8 e ds4 \prall cs
  }
  \alternative { {ds4 e fs2 e1~e4 r b r }{ds4 e ds2 cs1~cs1 } }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Bulgar 2%%%%%%%%%%%%%
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  \bar "||"
  \mark \default
  cs'8^\markup {\italic{ "Bulgar #2"}} cs4.
  gs4 gs
  bs4 cs
  ds2

  cs2~cs2~cs2~cs4 r

  ds8 ds4.
  fs4 e
  ds4 cs
  cs8[(b as b)]

  gs2~gs2~gs2~gs4 r

  \repeat volta 2{
  \mark \default
    \mark \default  %D section
    cs8 cs4.
    d4 cs
    cs4 b
    b4 a8 gs

    fs8 a4.~
    a2~a2~ a4. a8
  }

  \alternative{
    {
      gs8 gs4.
      b4 a8 gs
      fs4 e8 ds
      a'2
      gs2~gs2~gs2~gs4. r8
    }
    {
      ds8 ds4.
      b'4 a
      gs4 fs8(gs)
      fs8[(e ds e)]
      cs2~cs2~cs2~cs4. r8
    }
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Bulgar 3%%%%%%%%%%%5

  \bar ".|:"
  \repeat volta 2{
  \mark \default
    \mark \default  %Section E
    r8 ^\markup {\italic{"Bulgar #3"}} b' [b a]
    gs4 b
    e2~e2~e2~e8 [ds e es]
    fs4 ds
    cs4. bs8|
    b2~b2~b2~b2
    \bar ".|:"
  }
  \repeat volta 2{
  \mark \default
    \mark \default
    \bar ":..:"
    ds8(e)e4
    e4 e
    e4 d
    cs4\trill b

    bs8(cs)cs4
    cs4 cs
    cs4 b
    a4 \trill gs

    as8(b)b4
    b4 as
    a2~a2~a2~a8 [gs a as]
    b4 gs
    % }
  }
  \alternative {
    {
      cs4. bs8
      b2~b2~b2~b2
    }
    {
      fs4. es8
      e2~e2~e2~e2 _\markup {\italic \bold {"D.C."}}
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

  b1*5:m
  fs1:7
  b4*15:m a4
  %B
  d1
  e1:m
  fs1:7
  b1*2:m
  fs1:7
  b4*7:m a4
  fs1:7
  b1*2:m
  %C
  b2*3:m
  fs2
  b2*4:m
  fs2
  e2:m
  fs2
  a2
  d2*4
  %D
  b2*4:7
  e2*4:m
  fs2*2:7
  e2*2:m
  fs2*4:7
  e2*2:m
  fs2*2:7
  b4*7:m
  a4
  %E
  d2*6
  e2*2
  a2*4
  %F
  d4*5 d4:7
  d2
  g2*4
  a2*2
  g2*4
  a2*2
  d2*4
  d2*4

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

