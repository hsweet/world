\version "2.24.0"
\language "english"
%\pointAndClickOff


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

  \key c \major
  \time 2/4
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    e8 ds16 e fs e d c
    c8 b16 c d c b a
    gs16 a b c d c b a
    b16 a gs f gs f e d
    e8 f gs a
    b8 c ds e
    b2 ~
    b4 r8 e8

    e4(ds8 \trill c)
    c4(b8 \trill a)
    gs16 a b c d c b a
    b16 a gs f gs f e d
    e8 f gs a
    b16 a gs f gs f e d
  }

  \alternative {
    {e2 ~ e4 r8 e }
    {e2 ~ e4 r8  d }
  }
\repeat volta 2{
  \mark \default
    \tuplet 3/2 { d8 fs d }  \tuplet 3/2 { d a' d, }
    \tuplet 3/2 { d fs d} a'4
    gs16 a b a gs8. f16
    f16 e e d a8 d
    \tuplet 3/2 { d8  fs d }  \tuplet 3/2 { d a' d, }
    \tuplet 3/2 { d fs d} a'4
    gs16 a b a gs8. f16

    %alternate end for part II

  }

  \alternative {
    { gs16 f e8(e4)) }
    { gs16 f e8(e8.) ds'16) }
  }


  \repeat volta 2{
  \mark \default
   e2~ \barNumberCheck #30
    e8 e e e
    e8 e e e
    e2~
    e4 r8 ds
    e16 ds \trill c8 c c
    c c c c c2~
    c4. b8
    c8 \trill b a a ~
    a16 e a e a4~ %a e a e
    a2 ~%40
    a4  r8 b16 a
    gs8 a b c
    ds8. \trill c16 d c b a|
    as8 b(b4 b) r4
    ds8 e e e
    e8 e e e
    e2~|
    e4.(ds8)|
    e16 ds \trill c8 c c |
    c8 c c c  %50
    ds8 e e e
    ds8. \trill c16 d c b a
    c16 b a8 a a ~
    a16 e a e a e a e
    a2 ~
    a8 r r b16 a
    gs8 a b c
    ds8. \trill c16 d c b a
    as8 b( b4) ~
    b8 r d16 c b a


  }

  \repeat volta 2{
  \mark \default
    gs16  a b c b c b a
    d c b a b c b a
    gs a b a gs a gs f
    e8 gs b e
    gs,16 a b c b c b a
    d c b a  b c b a
    gs a b a gs a gs f
  }
  \alternative {
    {gs16 f e8 r4 }
    {e8 r e' r }
  }

}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {
  a2*4:m
  %r2*3
  e2 e4 f4
  e2*2
  %r2
  a2*4:m
  %r2*3
  e2 d2:m e2*2
  %r2
  e2*2
  %r2
  %b part
  d2*6
  %r2*5
  d2:m e2*2
  %c part
  a2*14
  \parenthesize e4*3
  f4
  e2*2
  %r2
  a2*12:m
  %r2*11
  e2
  e4 f4
   e2*2
  %r2
  %d part
  e2*6
  %r2*5
  e4 d4:m e2
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
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}


%{
convert-ly (GNU LilyPond) 2.20.0  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.40, 2.19.46, 2.19.49,
2.19.80, 2.20.0
%}
