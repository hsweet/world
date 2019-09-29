\version "2.18.0"


\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }
%\markup{ Got something to say? }

melody = \relative c'' {
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
    a8. a16 e8 e ~
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
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff  \with{
      instrumentName = "Violin2"
    } \melody
  >>
  \header{
    title= "Oy Tate, S'iz Git Backup"
    subtitle=" "
    composer= ""
    instrument =""
    arranger=""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
