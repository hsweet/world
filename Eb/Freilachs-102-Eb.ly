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
  \key fs \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   cs8 fs4  a16(cs)
   cs16(b) a b a4
   a16(gs) fs gs a(b) a gs
   fs8 fs' fs fs

   cs,8 fs4 a16(cs)
   cs16(b) a b a4
   a16(gs) fs gs a(b) gs a
   fs4 fs'
  }


  \repeat volta 2{
   \mark \default
   e,8 a4 a16(cs)
   cs16(b) b(a) e'4
   e16(fs) fs(e) e(d) d(cs)
   cs8. b16 cs(b) a8

   e8 a4 a16(cs)
   cs16(b) b(a) e'4
   e16(fs) fs(e) e(d) d(cs)
   cs2
  }

 \repeat volta 2{
 \mark \default
 cs16(fs) cs (fs) cs8. b16
 b8 a16 gs a4
 a16(gs) fs gs a(b) a gs
 fs8 fs' fs fs

 cs16(fs) cs (fs) cs8. b16
 b8 a16 gs a4
 a16(gs) fs gs a(b) a gs
 %a4 a'
 }
 \alternative{
   {fs4 fs'}
   {fs,4 fs'}
}
}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  fs2*8:m
  a2*8
  fs2*7:m
  fs2:m
  fs4:m b4:7

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
    title= "Freilachs"
    subtitle="Ultimate Klezmer p. 102"
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
