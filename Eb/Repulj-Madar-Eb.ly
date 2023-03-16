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
melody = \transpose fs' cs' \relative c''' {
  \clef treble
  \key b \major
  \time 2/4

  %\partial 16*3 a16 d f   %lead in notes
  fs8 [gs as as]
  \acciaccatura as16 gs4 fs
  fs8 [gs as \acciaccatura b16  gs8 ]
  ds4  cs

  as'8 [gs as  cs8]
  \acciaccatura e16 ds4 fs,
  as8 [gs gs fs]
  ds4 ds|
}
%################################# Lyrics #####################
\addlyrics
{
  Re -- pűij ma -- dár re -- pűij
  Mé -- na ság -- ra re -- pűij
  Él -- des ga -- lam bom --  nak
  Gyen --  ge vái lá -- ra űij.
}
\addlyrics{
  Mond -- jad, én kűld --  te -- lek
  Mond -- jad, hogy rab vag -- yok.
  Szer -- el -- em töm --  löc -- ben
  Tér -- dig vas -- ban vag -- yok.
}
\addlyrics{
  Rab vagy róz -- sám, rab vagy,
  Én meg be -- teg vag -- yok.
  Mi -- kor el -- jössz hoz -- zám
  Ak -- kor meg -- gyóg -- yu -- lok.
}
%################################# Chords #######################
%harmonies = \transpose a e \chordmode {
harmonies = \chordmode {
  cs2*3
  fs4 cs4*3
  fs4 cs4*3
  fs2
  %{
    old chords
  a2
  e4
  a4*3
  d4
  a4
  cs2
  a4
  fs:m
  a4
  e4:7
  fs4:m
  a4
  %}
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
    title= "Repűlj Mádar, Repűlj"
    subtitle="Hungarian"
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 120

    % \midi { }
  }
}
%{
% more verses:
\markup{}
\markup {
  \fill-line {
    \hspace #0.1 % distance from left margin
    \column {
      \line { "1."
        \column {
          ""
        }
      }
      \hspace #0.2 % vertical distance between verses
      \line { "2."
        \column {
         ""
        }
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line { "3."
        \column {
          ""
        }
      }
      \hspace #0.2 % distance between verses
      \line { "4."
        \column {
         ""
        }
      }
    }
    \hspace #0.1 % distance to right margin
  }
}

%}
