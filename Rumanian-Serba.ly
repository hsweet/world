\version "2.20.0"
%\include "english.ly"
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
  \key d \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  %\partial 4 g4    %lead in notes

   \repeat volta 2{
          \mark \default
          a 8 ^\markup { \bold "Dm" } d-1 e f  |
          e 8 d cis-1 a  |
          d 2 ~  |
          d 4 r  |
          %% 5
          d 8-3 f gis a  |
          gis 8 f e f  |
          gis 8 a 4.-3 ~  |
          a 4. \tuplet 3/2 { c 16-3 (b a) }  |
          gis 8-1 a-1b c  |
          %% 10
          d 8 c b a  |
          gis 8-1 a b c  |
          b 8 a gis f-3  |
          e 8 ^\markup { \bold "A" } f gis a  |
          \tuplet 3/2 { a 8 (gis f) } \tuplet 3/2 { f (e d) }  |
          %% 15
          d 2 ^\markup { \bold "Dm" } ~  |
        }
        \alternative {{d 4 r8 a  |} {  d 4 r8 c  |}  }

        \break
        \repeat volta 2{
          \mark \default
          a' 4-2 ^\markup { \bold "F" } \tuplet 3/2 { gis 8-1 (a-1 b-2) }  |
          c 4 \tuplet 3/2 { b 8 (c d-4 )}  |
          %% 20
          \tuplet 3/2 { es 8-4 d-4 c } \tuplet 3/2 { b c d }  |
          \tuplet 3/2 { c 8 b-2 bes-2 } \tuplet 3/2 { a -1g-4 f-3 }  |
          a 4 -1\tuplet 3/2 { gis 8-1 (a-1 b )}  |
          c 4 \tuplet 3/2 { b 8 (c d -4)} |
          \tuplet 3/2 { es 8 -4 d c } \tuplet 3/2 { c b as }  |
          %% 25
          b 16 (d) c 4 ^( c, 8 -1)  |
          a' 4 -2\tuplet 3/2 { gis 8 (a-1 b )}  |
          c 4 \tuplet 3/2 { b 8 (c d-4 )}  |
          \tuplet 3/2 { es 8-4 d c } \tuplet 3/2 { b c d }  |
          \tuplet 3/2 { c 8 b-2 bes-2 } \tuplet 3/2 { a-1 g-4 f-3 }  |
          %% 30
          g 8-4 a-1 bes-2 c-3  |
          a 8. -3^( g 16 ) \tuplet 3/2 { bes 8 ^\markup { \bold "C" } (a g) }  |
          f 2 ^\markup { \bold "F" } ^(
          % warning: overlong bar truncated here |
        }
        \alternative {{ f 4 ) r8 c  |} {f 4 r8 a  |}  }
       \break
        \repeat volta 2{
          \mark \default
          %% 35
          gis 8. ^\markup { \bold "Dm" } ^( a 16 ) f 8. ^( a 16 )  |
          e 8. ^( a 16 ) < cis, > 8. ^( a' 16 )  |
          d, 2 ~  |
          d 4. d' 8-4  |
          cis 8. ^\markup { \bold "Gm" } ^( d 16 ) bes 8. ^( d 16 )  |
          %% 40
          a 8. ^( d 16 ) d, 8. ^( d' 16 )  |
          g, 2-2 ~  |
          g 4. f' 8-4  |
          f 8 ^\markup { \bold "A" } d-3 cis 4-2 ^(
          % warning: overlong bar truncated here |
          cis 8 a -3) \tuplet 3/2 { bes (a g-2 )}  |
          %% 45
          a 8 gis a 4 ^(
          % warning: overlong bar truncated here |
          a 8. gis 16 ) \tuplet 3/2 { a 8 (gis f) }  |
          e 8 f gis a  |
          \tuplet 3/2 { a 8 (gis f) } \tuplet 3/2 { f (e d )}  |
          d 2 ^\markup { \bold "Dm" } ~  |
          %% 50


        }
        \alternative {{ d 4 r8 a'  |} { d, 4 r  |}  }
        \bar "|."
      } % Voice


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
