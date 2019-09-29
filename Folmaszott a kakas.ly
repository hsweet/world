\version "2.18.0"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}

date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%%\markup{ \italic{ " Updated " \date  }  }


melody = \relative c'' {
  \clef treble
  \key g \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes


  <<
    {
      g'4  fis e b
      b'8 a4. g4 fis
      e2 e4 r4

      b'8 b4. c4 b
      a4 d, b'8 a4.
      g2 g4 r4
    }
    \\
    {
      g,4  fis e b
      b'8 a4. g4 fis
      e2 e4 r4

      b'8 b4. c4 b
      a4 d, b'8 a4.
      g2 g4 r4
    }
  >>


  \repeat volta 2{
  \mark \default
    <<
      {
        b'4  b c8 b4.
        a8 a b fis-3 g-4 a4.

        g4 fis8 fis e b4.
        b'4 a g fis
        e2 e4 r4
      }
      % \\arranger= "Szélrózsa"
      {
        b4  b c8 b4.
        a8 a b fis g a4.

        g4 fis8 fis e b4.
        b'4 a g fis
        e2 e4 r4
      }
    >>
  }

  % \alternative { { }{ } }

}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {

  e4:m b:7 e:m e:m
  d4 d g b:7
  e1:m
  g2 a4:m g
  d1
  g1

  %b part

  g1
  d1
  e4:m b:7 e2:m
  g4 d e:m b:7
  e:m
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
