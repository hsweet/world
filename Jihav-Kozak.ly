\version "2.24.0"
\include "english.ly"
%\pointAndClickOff
\paper{
  tagline = #ff
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ \date }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key e \minor
  \time 2/4
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 4 g4    %lead in notes

  e8 e e e
  e8 g fs e
  fs fs fs fs
  fs a g(fs)

  g g g g
  g b a g
  fs fs b b
  e,4 <<d fs \fermata >>  \bar"||" %add slur

  b8 b b b
  b d c(b)
  a a a a
  a c b(a)

  g g g g
  b b a g
  fs fs b b
  e,4 <<d fs\fermata >>  \bar "||"

  b8 b b b
  b b b b
  b4 fs
  fs4 b

  a8 a a a
  a a a a
  a4 c
  b4 a

  g8 g g g
  g g g g
  g4 b
  a4 g

  fs8 fs b4
  fs8 fs b4
  e,4 ds
  e r8 d'  \bar"||"
  \break
<<
  \relative {g''2 ~ g2 ~g2 ~ g4. e8
   fs2~fs2~fs2~fs4. d8
   e2~e~e~e
  }
  \\
  \relative {
   <<g'8 b>> <<g b>> <<g b>> <<g b>>
   <<g b>> <<g b>><<g b>><<g b>>
   <<g4 b>><<b d>>
   <<a4 c>><<g b>>

   <<fs8 a>><<fs a>><<fs8 a>><<fs a>>
   <<fs8 a>><<fs a>><<fs8 a>><<fs a>>
   <<fs4 a>> <<a c>>
   <<g4 b>><<fs a>>

   <<e8 g>><<e g>><<e g>><<e g>>
   <<e8 g>><<e g>><<e g>><<e g>>
   <<e4 g>> <<g b>>
   <<fs a>> <<e g>>

   <<cs,8 fs>><<cs fs>> <<g4 b>>
   <<cs,8 fs>><<cs fs>> <<g4 b>>
   <<e,4 g>> <<cs, fs>>
   <<e4 g>> r



  }
  %\\
  %\relative { f2 }
>>

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
   e4:m
   b4
   g4 c
   b2

   e2:7
   e4:m b4
   g4 c4
   b2
   e4:m d4
   %bar
   g2
   e2:7
   a4*3:m b4:7
   e4:m
   b4
   g4 c4
   b2
   e4:m d4

  %bar

  g2*2
  e2*2:7
  a2*3:m
  b2:7
  e2*4:m
  b2*2
  e4:m b4
  e4:m d

  % bar
  g2*4
  d4*3
  a4*3
  b2:7
  e2*4:7
  b4 e4:m
  b4 e4:m
  g4 b4
  e2:m
}

\score {
  % transpose score below
  %\transpose c d
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Jihav Kozak"
    subtitle=""
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
  \font-size #2
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