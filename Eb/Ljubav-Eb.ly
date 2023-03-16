\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Int 1 & 2 can play as harmony parts }

%#################################### Melody ########################
melody = \relative c''' {
  \clef treble
  \key a \major
  \time 4/4

  %\partial 16*3 a16 d f   %lead in notes


  a8    gs fs es  fs cs(cs4)|
  fs4 a gs16 fs8. (fs4)|
  cs2 cs
  a'8 gs fs es  fs cs(cs4)|

  fs4 a gs16 fs8.(fs4)|  % b16 a8 does not add up to 1/4
  cs2 b
  fs'8 gs a b cs4 fs
  gs8 fs e d cs b(b4)|

  e4  cs8 cs cs16 b8. (b4)|
  fs2 <fs fs,>
  fs8 gs a b cs4 fs
  gs8 fs e d cs b(b4)|

  e4  cs8 cs cs16 b8. (b4)|
  fs2 <fs fs,>
  \break

  %\alternative { { }{ } }

  \repeat volta 2{
    fs8 ^\markup   "Int 1" cs fs cs fs cs fs cs|
    fs cs fs cs fs cs <fs a> <fs a >
    <a cs>1
    <gs b>1 | \break
  }
  % \alternative { { }{ } }

  cs,8 ^"Int 2"fs(fs2.)~ |
  fs4 fs8 gs \tuplet 3/2{a4 gs fs}|
  a1
  gs1

  cs,8 fs(fs2.)~
  fs4 fs8 gs \tuplet 3/2{<a cs>4 <gs b> <fs a>}
  <a cs>1
  <gs b>1|



}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  fs1:m
  rs1
  a1
  fs1:m
  s1
  a2
  b2
  fs1:m
  e1
  a2
  cs2
  fs1:m %10
  s1
  e1
  a2
  cs2
  fs1:m
  %Int1
  fs1:m
  s1
  a1
  cs1
  %Int2
  fs1:m
  s1
  a1
  cs1
  fs1:m
  s1
  a1
  cs1
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
    title= "Ljubav"
    subtitle=""
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
