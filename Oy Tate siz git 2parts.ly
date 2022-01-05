\version "2.20.0"


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
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    e8 dis16 e fis e d c
    c8 b16 c d c b a
    gis16 a b c d c b a
    b16 a gis f gis f e d
    e8 f gis a
    b8 c dis e
    b2 ~
    b4 r8 e8

    e4(dis8 \trill c)
    c4(b8 \trill a)
    gis16 a b c d c b a
    b16 a gis f gis f e d
    e8 f gis a
    b16 a gis f gis f e d
  }

  \alternative {
    {e2 ~ e4 r8 e }
    {e2 ~ e4 r8  d }
  }
\repeat volta 2{
  \mark \default
    \tuplet 3/2 { d8 fis d }  \tuplet 3/2 { d a' d, }
    \tuplet 3/2 { d fis d} a'4
    gis16 a b a gis8. f16
    f16 e e d a8 d
    \tuplet 3/2 { d8  fis d }  \tuplet 3/2 { d a' d, }
    \tuplet 3/2 { d fis d} a'4
    gis16 a b a gis8. f16

    %alternate end for part II

  }

  \alternative {
    { gis16 f e8(e4)) }
    { gis16 f e8(e4)) }
  }


  \repeat volta 2{
  \mark \default
    dis'8  e(e4 e2) \barNumberCheck #30
    e8 e e e
    e8 e e e
    e2~
    e4 r8 dis
    e16 dis \trill c8 c c
    c c c c c2~
    c4. b8
    b \trill a a a ~
    a16 e a e a e a e
    a2 ~%40
    a8 r r b16 a
    gis8 a b c
    dis8. \trill c16 d c b a|
    ais8 b(b4 b) r4
    dis8 e e e
    e8 e e e
    e2~|
    e4.(dis8)|
    e16 dis \trill c8 c c |
    c8 c c c  %50
    dis8 e e e
    dis8. \trill c16 d c b a
    c16 b a8 a a ~
    a16 e a e a e a e
    a2 ~
    a8 r r b16 a
    gis8 a b c
    dis8. \trill c16 d c b a
    ais8 b( b4) ~
    b8 r d16 c b a


  }

  \repeat volta 2{
  \mark \default
    gis16  a b c b c b a
    d c b a b c b a
    gis a b a gis a gis f
    e8 gis b e
    gis,16 a b c b c b a
    d c b a  b c b a
    gis a b a gis a gis f
  }
  \alternative {
    {gis16 f e8 r4 }
    {e8 r e' r }
  }

}
%***********************
harmony = \relative c'' {
  \clef treble

  \key c\major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet


  \repeat volta 2{
  \mark \default
    a8.  a16 e8 a~
    a16 a a a e8 a
    a,8 a'e a
    a16 a a a e8 a
    e8 f e f %5
    gis8 a(a)a
    gis8 e' d16 c b a
    gis8 e16 e fis 8 gis
    a8. a16 e8 e
    a16 a a a e8 a
    a,8 a'e a~
    a16 a a a e8 a
    e8 f e f16 e
    d4 f


  }

  \alternative {
    {
      e8 e' d16 c b a
      gis8 e fis gis
    }
    {
      e8 e'16 e b8 gis
      e8. e16 b8 d
    }
  }


  \repeat volta 2{
  \mark \default
    e8.   e16 fis8 a
    d8 a fis d
    d8 fis a, fis'
    d8 fis a, fis'

    e8.  e16 fis8 a
    d8 a fis d
    %p2 original
    d4 f
  }
  \alternative {
    {e4. d8 }
    {e8 e16 e fis8 g }
  }

  \repeat volta 2{
  \mark \default
    a8. a16 d,8 a' ~
    a16 a a a e8 gis
    a8 a16 a c8 e
    a8 e c a
    a8. a16 e8 c|
    a8 a c e %31
    a8. a16 d,8 a' ~
    a16 a a a e8 gis
    a8. a16 e8 a~
    a16 a a a e8 fis
    a8. a16 e8 a~|
    a8 a e c'
    a8. a16 e8 c|
    a8 c e a
    gis8 a gis a %42
    gis4 f
    e8. e16 gis8 b
    e8 b gis e
    a8. a16 e8 a~
    a16 a a a e8 c
    a8. a16 c8 e
    a8 c e c
    a8. a16 e8 a~
    a16 a a a e8 gis
    a8. a16 e8 a~
    a16 a a a e8 gis
    a8. a16 e8 a~
    a8 a e a
    a8. a16 e8 a~
    a8 c e c
    gis8 a gis a
    gis4 f
    e8. e16 gis8 b
    e8 b gis f



  }

  \repeat volta 2{
  \mark \default
    e8   gis b, gis'
    e8 gis b, gis'
    e8 gis b, gis'
    e8 gis gis b

    e,8 gis b gis
    e8 gis b, gis'
    e4 f




  }

  \alternative {
    {e8 gis b, gis' }
    { e8 r e' r}
  }

}
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
    \new Staff\harmony
  >>
  \header{
    title= "Oy Tata, S'z Git"
    composer= "Brandwein"
    instrument =""
    arranger= "Jeff Warshauer"
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}


%{
convert-ly (GNU LilyPond) 2.20.0  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.40, 2.19.46, 2.19.49,
2.19.80, 2.20.0
%}
