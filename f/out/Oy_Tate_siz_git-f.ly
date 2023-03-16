\version "2.20.0"
\language "english"


\paper {
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
  tagline = ##f
}

date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

melody = \relative c'' {
  \clef treble

  \key g \major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    b8 as16 b cs b a g
    g8 fs16 g a g fs e
    ds16 e fs g a g fs e
    fs16 e ds c ds c b a
    b8 c ds e
    fs8 g as b
    fs2 ~
    fs4 r8 b8

    b4(as8 \trill g)
    g4(fs8 \trill e)
    ds16 e fs g a g fs e
    fs16 e ds c ds c b a
    b8 c ds e
    fs16 e ds c ds c b a
  }

  \alternative {
    {b2 ~ b4 r8 b }
    {b2 ~ b4 r8  a }
  }
\repeat volta 2{
  \mark \default
    \tuplet 3/2 { a8 cs a }  \tuplet 3/2 { a e' a, }
    \tuplet 3/2 { a cs a} e'4
    ds16 e fs e ds8. c16
    c16 b b a e8 a
    \tuplet 3/2 { a8  cs a }  \tuplet 3/2 { a e' a, }
    \tuplet 3/2 { a cs a} e'4
    ds16 e fs e ds8. c16

    %alternate end for part II

  }

  \alternative {
    { ds16 c b8(b4)) }
    { ds16 c b8(b8.) as'16) }
  }


  \repeat volta 2{
  \mark \default
   b2~ \barNumberCheck #30
    b8 b b b
    b8 b b b
    b2~
    b4 r8 as
    b16 as \trill g8 g g
    g g g g g2~
    g4. fs8
    g8 \trill fs e e ~
    e16 b e b e4~ %a e a e
    e2 ~%40
    e4  r8 fs16 e
    ds8 e fs g
    as8. \trill g16 a g fs e|
    es8 fs(fs4 fs) r4
    as8 b b b
    b8 b b b
    b2~|
    b4.(as8)|
    b16 as \trill g8 g g |
    g8 g g g  %50
    as8 b b b
    as8. \trill g16 a g fs e
    g16 fs e8 e e ~
    e16 b e b e b e b
    e2 ~
    e8 r r fs16 e
    ds8 e fs g
    as8. \trill g16 a g fs e
    es8 fs( fs4) ~
    fs8 r a16 g fs e


  }

  \repeat volta 2{
  \mark \default
    ds16  e fs g fs g fs e
    a g fs e fs g fs e
    ds e fs e ds e ds c
    b8 ds fs b
    ds,16 e fs g fs g fs e
    a g fs e  fs g fs e
    ds e fs e ds e ds c
  }
  \alternative {
    {ds16 c b8 r4 }
    {b8 r b' r }
  }

}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {
  e2*4:m
  %r2*3
  b2 b4 c4
  b2*2
  %r2
  e2*4:m
  %r2*3
  b2 a2:m b2*2
  %r2
  b2*2
  %r2
  %b part
  a2*6
  %r2*5
  a2:m b2*2
  %c part
  e2*14
  \parenthesize b4*3
  c4
  b2*2
  %r2
  e2*12:m
  %r2*11
  b2
  b4 c4
   b2*2
  %r2
  %d part
  b2*6
  %r2*5
  b4 a4:m b2
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
    title= "Oy Tata, S'z Git"
    composer= "Brandndwein"
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 80
  }
}


%{
convert-ly (GNU LilyPond) 2.20.0  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.40, 2.19.46, 2.19.49,
2.19.80, 2.20.0
%}
