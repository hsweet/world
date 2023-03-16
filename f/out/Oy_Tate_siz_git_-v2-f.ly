\version "2.18.0"
\language "english"


\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }
%\markup{ Got something to say? }

melody = \relative c' {
  \clef treble

  \key g\major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet


  \repeat volta 2{
  \mark \default
    e8.  e16 b8 e~
    e16 e e e b8 e
    e,8 e'b e
    e16 e e e b8 e
    b8 c b c %5
    ds8 e(e)e
    ds8 b' a16 g fs e
    ds8 b16 b cs 8 ds
    e8. e16 b8 b
    e16 e e e b8 e
    e,8 e'b e~
    e16 e e e b8 e
    b8 c b c16 b
    a4 c


  }

  \alternative {
    {
      b8 b' a16 g fs e
      ds8 b cs ds
    }
    {
      b8 b'16 b fs8 ds
      b8. b16 fs8 a
    }
  }


  \repeat volta 2{
  \mark \default
    b8.   b16 cs8 e
    a8 e cs a
    a8 cs e, cs'
    a8 cs e, cs'

    b8.  b16 cs8 e
    a8 e cs a
    %p2 original
    a4 c
  }
  \alternative {
    {b4. a8 }
    {b8 b16 b cs8 d }
  }

  \repeat volta 2{
  \mark \default
    e8. e16 a,8 e' ~
    e16 e e e b8 ds
    e8 e16 e g8 b
    e8 b g e
    e8. e16 b8 g|
    e8 e g b %31
    e8. e16 a,8 e' ~
    e16 e e e b8 ds
    e8. e16 b8 e~
    e16 e e e b8 cs
    e8. e16 b8 e~|
    e8 e b g'
    e8. e16 b8 g|
    e8 g b e
    ds8 e ds e %42
    ds4 c
    b8. b16 ds8 fs
    b8 fs ds b
    e8. e16 b8 e~
    e16 e e e b8 g
    e8. e16 g8 b
    e8 g b g
    e8. e16 b8 e~
    e16 e e e b8 ds
    e8. e16 b8 e~
    e16 e e e b8 ds
    e8. e16 b8 e~
    e8 e b e
    e8. e16 b8 e~
    e8 g b g
    ds8 e ds e
    ds4 c
    b8. b16 ds8 fs
    b8 fs ds c



  }

  \repeat volta 2{
  \mark \default
    b8   ds fs, ds'
    b8 ds fs, ds'
    b8 ds fs, ds'
    b8 ds ds fs

    b,8 ds fs ds
    b8 ds fs, ds'
    b4 c




  }

  \alternative {
    {b8 ds fs, ds' }
    { b8 r b' r}
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
    title= "Oy Tate, S'iz Git "
    subtitle="2nd Part  "
    composer= ""
    instrument =""
    arranger=""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
