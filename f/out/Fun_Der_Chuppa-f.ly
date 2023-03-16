\version "2.16.0"
%\include "english.ly"
\paper{
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
melody = \relative c {
  \global
  
  \partial 8 d8

  \repeat volta 2{
   \mark \default
    g8. [ g16 ] g16 [ a16 bes16 cis16 ] | % 2
    cis16 [ d16 d8 ] d8 [ d8 ] | % 3
    f16 [ e16 d8 ] d16 [ cis16 bes8 ] | % 4
    d16 [ cis16 bes8 ] bes16 [ a16 g8 ] | % 5
    g4 a8. [ bes16 ] | % 6
    cis8 [ d8 ] d8 [ d8 ] | % 7
    g4. d8 | % 8
    g8 [ f8 ] e8 [ d8 ] | % 9
    g,8. [ g16 ] g16 [ a16 bes16 cis16 ] | \barNumberCheck #10
    cis16 [ d16 d8 ] d8 [ d8 ] | % 11
    f16 [ e16 d8 ] d16 [ cis16 bes8 ] | % 12
    d16 [ cis16 bes8 ] bes16 [ a16 g8 ] | % 13
    f'16 [ e16 f16 e16 ] f16 [ e16 d8 ] | % 14
    g8 [ f16 e16 ] d16 [ cis16 bes8 ] | % 15
    d8 [ cis16 bes16 ] cis16 [ bes16 a16 bes16 ] }
  \alternative {
    {g4. d8 }
    {g4. d'8 }
  }
 \break
  \repeat volta 2{
   \mark \default
    g4. d8 | % 19
    | % 19
    g4. d8 | \barNumberCheck #20
    g8 [ d8 ] g8 [ d8 ] | % 21
    g8 [ g8 ] g4 | % 22
    g8 [ f8 ] e8 [ d8 ] | % 23
    cis8. [ bes16 ] cis16 [ bes16 a16 g16 ] | % 24
    g'8 [ f8 ] e8 [ d8 ] | % 25
    cis8 d4. | % 26
    g8 [ f8 ] e8 [ d8 ] | % 27
    cis8. [ bes16 ] cis16 [ bes16 a16 g16 ] | % 28
    | % 28
    a8 [ a8 ] bes16 [ a16 a16 bes16 ] | % 29
    | % 29
    g2 }
 
   \break
   \repeat volta 2{
   \mark \default
     
    \key e \minor | \barNumberCheck #30
    b8 [ d8 ] d16 [ c16 c16 b16 ] | % 31
    b8 [ d8 ] d16 [ c16 c16 b16 ] | % 32
    d16 [ c16 d16 e16 ] f16 [ e16 d16 c16 ] | % 33
    d2 | % 34
    | % 34
    b8 [ d8 ] d16 [ c16 c16 b16 ] | % 35
    | % 35
    c4. cis8 | % 36
    | % 36
    e16 [ d16 cis16 bes16 ] cis16 [ bes16 a16 bes16 ] | % 37
    | % 37
    g2 }
   }
   
 


%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  s8
  g2*14:m
  d2*2
  %b
  g2*11:m
  d2 g2:m
  %c
  g2*5
  c2:m
  d2
  g2:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff \with {
      instrumentName = "Violin"} \melody
  >>
  \header{
    title= "Fun Der Chuppa"
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{ }
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
