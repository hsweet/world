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
  \key e \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
%\include "Good-Morning-Bulgar.ly"
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   b4(g') \tuplet 3/2{g8 (fs e)}
   ds4 (e) \tuplet 3/2{g8 (fs e)}
   ds4 (b) \tuplet 3/2{c8 (b a)}
   b2.

   b4 (b') \tuplet 3/2{a8 (b a)}
   fs4 (g) \tuplet 3/2{g8 (fs e)}
   fs8.(b16) fs8.(b16) fs8.(b16)
   fs2 fs8.(g16)

   a4. g16 a \tuplet 3/2{g8 (fs e)}
   ds4 e fs8 g
   fs4. e16 fs \tuplet 3/2{e8 (ds c)}
   b4 c \tuplet 3/2{c8 (b a)}

   a4 a' \tuplet 3/2{g8 (fs e)}
   ds4 a b8 c
   b8.(c16) b8.(c16)b8.(c16)
   b2.
  }
  \break
  \repeat volta 2{
   \mark \default
   b'4 as b
   g2.
   b8(as) cs b as g
   fs2.

   b8(e,)fs g as b
   as4. g16(as) \tuplet 3/2{g8 fs e}|
   ds4.(b8) b'16 a g fs
  }
   \alternative {
     {e8.(ds16) e8 fs g as |}
     {e2. }
   }

   \repeat volta 2{
   \mark \default
   g'8.(fs16) e8 ds e g
   fs8. e16 ds8 b ds fs|
   e8.(ds16) e8 ds c b
   a2.

   a8 b c4 \tuplet 3/2{ds8 (e fs)}
   a8 g fs e ds c
   b8 a b c ds e
  }
   \alternative {
     {fs16(g) e (g)fs2 }
     { b,2.}
   }


}


%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  e4*6:m
  b4*6
  e4*6:m
  b4*6
  a4*6:m
  b4*6
  a4*6:m
  b4*6
  %B
  e4*9:m
  b4*3
  e4*6:m
  b4*3
  e4*6:m
  %C
  e4*3:m
  b4*3
  a4*12:m
  b4*9
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff   \melody


  >>
  \header{
    title= "Good Morning"
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
