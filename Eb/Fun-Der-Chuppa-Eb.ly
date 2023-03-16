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
  \key e \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
  
  \partial 8 e8

  \repeat volta 2{
   \mark \default
    a8. [ a16 ] a16 [ b16 c16 dis16 ] | % 2
    dis16 [ e16 e8 ] e8 [ e8 ] | % 3
    g16 [ fis16 e8 ] e16 [ dis16 c8 ] | % 4
    e16 [ dis16 c8 ] c16 [ b16 a8 ] | % 5
    a4 b8. [ c16 ] | % 6
    dis8 [ e8 ] e8 [ e8 ] | % 7
    a4. e8 | % 8
    a8 [ g8 ] fis8 [ e8 ] | % 9
    a,8. [ a16 ] a16 [ b16 c16 dis16 ] | \barNumberCheck #10
    dis16 [ e16 e8 ] e8 [ e8 ] | % 11
    g16 [ fis16 e8 ] e16 [ dis16 c8 ] | % 12
    e16 [ dis16 c8 ] c16 [ b16 a8 ] | % 13
    g'16 [ fis16 g16 fis16 ] g16 [ fis16 e8 ] | % 14
    a8 [ g16 fis16 ] e16 [ dis16 c8 ] | % 15
    e8 [ dis16 c16 ] dis16 [ c16 b16 c16 ] }
  \alternative {
    {a4. e8 }
    {a4. e'8 }
  }
 \break
  \repeat volta 2{
   \mark \default
    a4. e8 | % 19
    | % 19
    a4. e8 | \barNumberCheck #20
    a8 [ e8 ] a8 [ e8 ] | % 21
    a8 [ a8 ] a4 | % 22
    a8 [ g8 ] fis8 [ e8 ] | % 23
    dis8. [ c16 ] dis16 [ c16 b16 a16 ] | % 24
    a'8 [ g8 ] fis8 [ e8 ] | % 25
    dis8 e4. | % 26
    a8 [ g8 ] fis8 [ e8 ] | % 27
    dis8. [ c16 ] dis16 [ c16 b16 a16 ] | % 28
    | % 28
    b8 [ b8 ] c16 [ b16 b16 c16 ] | % 29
    | % 29
    a2 }
 
   \break
   \repeat volta 2{
   \mark \default
     
    \key fis \minor | \barNumberCheck #30
    cis8 [ e8 ] e16 [ d16 d16 cis16 ] | % 31
    cis8 [ e8 ] e16 [ d16 d16 cis16 ] | % 32
    e16 [ d16 e16 fis16 ] g16 [ fis16 e16 d16 ] | % 33
    e2 | % 34
    | % 34
    cis8 [ e8 ] e16 [ d16 d16 cis16 ] | % 35
    | % 35
    d4. dis8 | % 36
    | % 36
    fis16 [ e16 dis16 c16 ] dis16 [ c16 b16 c16 ] | % 37
    | % 37
    a2 }
   }
   
 


%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  s8
  a2*14:m
  e2*2
  %b
  a2*11:m
  e2 a2:m
  %c
  a2*5
  d2:m
  e2
  a2:m
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
