\version "2.20.0"
%\include "english.ly"
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
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
  %\partial 4 g4    %lead in notes

   \repeat volta 2{
          \mark \default
          e 8 ^\markup { \bold "Dm" } a-1 b c  |
          b 8 a gis-1 e  |
          a 2 ~  |
          a 4 r  |
          %% 5
          a 8-3 c dis e  |
          dis 8 c b c  |
          dis 8 e 4.-3 ~  |
          e 4. \tuplet 3/2 { g 16-3 (fis e) }  |
          dis 8-1 e-1fis g  |
          %% 10
          a 8 g fis e  |
          dis 8-1 e fis g  |
          fis 8 e dis c-3  |
          b 8 ^\markup { \bold "A" } c dis e  |
          \tuplet 3/2 { e 8 (dis c) } \tuplet 3/2 { c (b a) }  |
          %% 15
          a 2 ^\markup { \bold "Dm" } ~  |
        }
        \alternative {{a 4 r8 e  |} {  a 4 r8 g  |}  }

        \break
        \repeat volta 2{
          \mark \default
          e' 4-2 ^\markup { \bold "F" } \tuplet 3/2 { dis 8-1 (e-1 fis-2) }  |
          g 4 \tuplet 3/2 { fis 8 (g a-4 )}  |
          %% 20
          \tuplet 3/2 { bes 8-4 a-4 g } \tuplet 3/2 { fis g a }  |
          \tuplet 3/2 { g 8 fis-2 f-2 } \tuplet 3/2 { e -1d-4 c-3 }  |
          e 4 -1\tuplet 3/2 { dis 8-1 (e-1 fis )}  |
          g 4 \tuplet 3/2 { fis 8 (g a -4)} |
          \tuplet 3/2 { bes 8 -4 a g } \tuplet 3/2 { g fis es }  |
          %% 25
          fis 16 (a) g 4 ^( g, 8 -1)  |
          e' 4 -2\tuplet 3/2 { dis 8 (e-1 fis )}  |
          g 4 \tuplet 3/2 { fis 8 (g a-4 )}  |
          \tuplet 3/2 { bes 8-4 a g } \tuplet 3/2 { fis g a }  |
          \tuplet 3/2 { g 8 fis-2 f-2 } \tuplet 3/2 { e-1 d-4 c-3 }  |
          %% 30
          d 8-4 e-1 f-2 g-3  |
          e 8. -3^( d 16 ) \tuplet 3/2 { f 8 ^\markup { \bold "C" } (e d) }  |
          c 2 ^\markup { \bold "F" } ^(
          % warning: overlong bar truncated here |
        }
        \alternative {{ c 4 ) r8 g  |} {c 4 r8 e  |}  }
       \break
        \repeat volta 2{
          \mark \default
          %% 35
          dis 8. ^\markup { \bold "Dm" } ^( e 16 ) c 8. ^( e 16 )  |
          b 8. ^( e 16 ) < gis, > 8. ^( e' 16 )  |
          a, 2 ~  |
          a 4. a' 8-4  |
          gis 8. ^\markup { \bold "Gm" } ^( a 16 ) f 8. ^( a 16 )  |
          %% 40
          e 8. ^( a 16 ) a, 8. ^( a' 16 )  |
          d, 2-2 ~  |
          d 4. c' 8-4  |
          c 8 ^\markup { \bold "A" } a-3 gis 4-2 ^(
          % warning: overlong bar truncated here |
          gis 8 e -3) \tuplet 3/2 { f (e d-2 )}  |
          %% 45
          e 8 dis e 4 ^(
          % warning: overlong bar truncated here |
          e 8. dis 16 ) \tuplet 3/2 { e 8 (dis c) }  |
          b 8 c dis e  |
          \tuplet 3/2 { e 8 (dis c) } \tuplet 3/2 { c (b a )}  |
          a 2 ^\markup { \bold "Dm" } ~  |
          %% 50


        }
        \alternative {{ a 4 r8 e'  |} { a, 4 r  |}  }
        \bar "|."
      } % Voice

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {

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
    title= "Romanian Serba"
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
