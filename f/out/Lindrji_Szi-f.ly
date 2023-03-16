\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \relative c'' {
  \clef treble
  \key e \minor
  \time 2/4

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    e8   e e4
    e8 d16 cs d4|
    e8 b16 b b8 g|
    a8 b a4|

    b8 e,16 e e8 e|
    fs8 fs fs4|
    g16 fs e8 e b'8
    b fs fs e|
    %{ <<
      {
        r4 f''8 e
        a,16 b c a b c b
      }
      \\
      {b,2~b2} %10
    >>
    %}
    fs2 ~
    fs2
  }
  %\alternative { { }{ } }


  % \alternative { { }{ } }

}
%################################# Lyrics #####################
\addlyrics{

  Lind -- raji szi a -- di gil -- yi,
  na tu -- ke rakh -- jom la av -- ri,
  dav tu men -- ge an -- dar ji -- lo,
  hat -- yar -- a -- sz a -- men de m -- is -- to.
}
%################################# Chords #######################
harmonies = \chordmode {
  e2:m
  d2
  e2:m
  a2:m
  e2:m
  a2:m
  e2:m
  fs2:7
  b2:7
  s2
  %{
  a2:m
  r2
  g2
  r2
  a2:m
  r2
  b2
  r2
  e2
  %}

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      #(set-paper-size "letter")
      #(set-paper-size "letter")
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Lindrji Szi"
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
% more verses:
\markup{}
\markup {
  \fill-line {
    \hspace #0.1 % distance from left margin
    \column {
      \line { "1."
              \column {
                "Lindraji szi adi gilyi, na tuke rakhjom la avri,"
                "dav tu menge andar jilo, hatyarasz amen de misto."
              }
      }
      \hspace #0.2 % vertical distance between verses
      \line { "2."
              \column {
                "Othar katar me avilyom, numa sudro trajo angyom,"
                "hate tatyol lokesz opre, lasi voja dav tu menge."
              }
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line { "3."
              \column {
                "Lunge ratyi zsanaba tar, naszvalo szom me tumendar,"
                "andar naszul szaszman doszta, mukhen aba mange pacsa."
              }
      }
      \hspace #0.2 % distance between verses
      \line { "4."
              \column {
                "Khere te szan szikav mange, szar te zsuvav me tu mende,"
                "saj avel e sudri balval,man na phurdel aba athar"
              }
      }
    }
    \hspace #0.1 % distance to right margin
  }
}
%{

Lindraji szi adi gilyi, na tuke rakhjom la avri,
dav tu menge andar jilo, hatyarasz amen de misto.

Othar katar me avilyom, numa sudro trajo angyom,
hate tatyol lokesz opre, lasi voja dav tu menge.

Lunge ratyi zsanaba tar, naszvalo szom me tumendar,
andar naszul szaszman doszta, mukhen aba mange pacsa.

Khere te szan szikav mange, szar te zsuvav me tu mende,
saj avel e sudri balval,man na phurdel aba athar.
%}
