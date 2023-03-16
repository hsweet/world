\version "2.18.0"
\include "english.ly"
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
  \key a \minor
  \time 3/8
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   a8. c16 [e a]
   c,8. e16 [a c]
   e,8. a16[c e]

   es16 \trill c8. [b16 \trill a]

   ds16 [e8.] \times 2/3 {g16 fs e}
   ds8. [c16] \times 2/3 {c b a}
   e'4 e8
   a4.

   a,,8. c16 [e a]
   c,8. e16 [a c]
   e,8. a16[c e]
   es16 \trill c8. [b16 \trill a]

   ds16 [e8.] \times 2/3 {g16 fs e}
   ds8. [c16] \times 2/3 {c b a}
   e'8. [a,16] b c
   e16 [ds c8] \times 2/3{c16 b a}

   a8. e16 [c' b]


  }
  \alternative {
    {a8 r e, }
    {a'8.  gs32(a as [b c cs] ) }
  }
  \break

  \repeat volta 2{
   \mark \default
   cs8 d d
   d4 c16 b
   b8 c c~
   c8 b8. a16

   b4 b8
   b8. e,16 [fs gs]
   a8.[b16] c d
   e16 [ds c8] \times 2/3{c16 b a}

  cs8 d (a')|
  d,4-3 c16 -2 [b-1]
  b8 c(e)
  c4 \times 2/3{c16 b a}

  b4 b8
  e8. e,16 [fs gs] |
  a8. c16 [e c]|
  }
   \alternative {
     {a8.  gs32(a as [b c cs] )| }
     {a4 e8 |}
   }
   \break
    \repeat volta 2{
   \mark \default
   a8. c16 \upbow [c\upbow b]
   b8. d16 [d c]
   c8. e16[e d]
   d8. f16 [f e]

   e8. ds16 [ds c]
   c8. b16[b a]

   ds16 e8. (e8)
   a4.\trill

   a,8. c16 \upbow [c\upbow b]
   b8. d16 [d c]
   c8. e16[e d]
   d8. f16 [f e]

   e8. ds16 [ds c]

    }

    \alternative{
      {c8. b16[b a]
      a8 r16 a e c
      a8 r e'}
      {c8. e16 [e gs]
      a8 r16 a'-3 e-4 c-2
      a4 r8}
    }
}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  a8*12:m
  e8*6:7
  a8*18:m
  e8*6:7
  a8*8:m
  e8:7
  a8*6:m
  %b
  d8*6:m
  a8*6:m
  e8*6:7
  a8*6:m
  d8*6:m
  a8*6:m
  e8*6:7
  a8*9:m
  %c
  a8*3:m
  e8*3:7
  a8*3:m
  d8*3:m
  a8*3:m
  e8*3:7
  a8*6:m

  a8*3:m
  e8*3:7
  a8*3:m
  d8*3:m
  a8*3:m
  e8*3:7
  a8*3:m
  e8*3:7
  e8*3:7
  a8*3:m


}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Nokh a Glezele Vayn"
    subtitle="In a Rumanashye Shenk"
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
