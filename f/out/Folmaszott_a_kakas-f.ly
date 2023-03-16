\version "2.18.0"
\language "english"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}

date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%%\markup{ \italic{ " Updated " \date  }  }


melody = \relative c'' {
  \clef treble
  \key d \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes


  <<
    {
      d4  cs b fs
      fs'8 e4. d4 cs
      b2 b4 r4

      fs'8 fs4. g4 fs
      e4 a, fs'8 e4.
      d2 d4 r4
    }
    \\
    {
      d,4  cs b fs
      fs'8 e4. d4 cs
      b2 b4 r4

      fs'8 fs4. g4 fs
      e4 a, fs'8 e4.
      d2 d4 r4
    }
  >>


  \repeat volta 2{
  \mark \default
    <<
      {
        fs'4  fs g8 fs4.
        e8 e fs cs-3 d-4 e4.

        d4 cs8 cs b fs4.
        fs'4 e d cs
        b2 b4 r4
      }
      % \\arranger= "Szélrózsa"
      {
        fs4  fs g8 fs4.
        e8 e fs cs d e4.

        d4 cs8 cs b fs4.
        fs'4 e d cs
        b2 b4 r4
      }
    >>
  }

  % \alternative { { }{ } }

}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {

  b4:m fs:7 b:m b:m
  a4 a d fs:7
  b1:m
  d2 e4:m d
  a1
  d1

  %b part

  d1
  a1
  b4:m fs:7 b2:m
  d4 a b:m fs:7
  b:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Folmaszott a kakas"
    subtitle = ""
    composer= "Rabatamasi"
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
