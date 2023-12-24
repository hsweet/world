\version "2.18.0"
\include "english.ly"
%\pointAndClickOff
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \transpose a e \relative c''' {
  \clef treble
  \key d \major
  \time 2/4

  %\partial 16*3 a16 d f   %lead in notes
  a8 [b cs cs]
  \acciaccatura cs16 b4 a
  a8 [b cs \acciaccatura d16  b8 ]
  fs4  e

  cs'8 [b cs  e8]
  \acciaccatura g16 fs4 a,
  cs8 [b b a]
  fs4 fs|
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
  e2*3
  a4 e4*3
  a4 e4*3
  a2
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
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Repűlj Mádar, Repűlj"
    subtitle="Hungarian"
    composer= ""
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
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
