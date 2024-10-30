\version "2.18.0"
\include "english.ly"
\pointAndClickOff
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
  \key cs \minor
  \time 3/8
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  \partial 16*3 gs16 as bs   %lead in notes

  \repeat volta 2{
   \mark \default
   cs8. gs'16 e gs cs,8. gs'16 e gs
   cs,4. es
   fs8. cs'16 a cs fs,8. cs'16 a cs|
   fs,4. (fs8.)bs16cs css

   ds8. cs16 cs bs bs8. a16 a gs
   gs8 cs cs cs8. b16 b a
   gs8. fs16 fs e b'8. a16 b a
   gs4.(gs8.) bs16 cs css
   ds8. cs16 cs bs bs8. a16 a gs

    gs8 cs cs cs8. b16 b a
    gs8. a16 fs gs e8. fs16 ds e
    cs8. gs'16 e gs cs,4.

  }


  \repeat volta 2{
   \mark \default
   gs'8 e' e e8. ds16 ds cs
   b8 ds ds ds4.
   a8 cs cs cs8. b16 b a
   gs8 b b b4.

   fs8 a a a8. gs16 gs fs
   e8 gs gs gs8. gs16 b a

  }
   \alternative {
     {gs8. fs16 fs e b'8. a16 b a
     gs4.(gs4.)}
     {gs8. a16 fs gs e8. fs16 ds e
     cs8. gs'16 e gs cs,4. }
   }
   \break
     \repeat volta 2{
   \mark \default
   b8. cs16 ds e fs8. gs16 a fs
   a8 gs4(gs4.)
   fs8. e16 e ds b'8. a16 b a|
   gs4.~|
   gs4.

   b,8. cs16 ds e fs8. gs16 a fs|
   gs8 a(a8 )~|
   a4. \fermata |
   gs8. a16 fs gs e8. fs16 ds e|

     }
  \alternative{
  {cs8. gs'16 e gs cs,4.}
  {cs8. cs'16 gs e cs4.}
  }

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  s16*3
  cs8*9:m cs8*3
  fs4*6:m
  gs4*3:7
  cs8*3:m a8*3
  e8*3 b8*3:7
  e8*6
  gs8*6:7
  cs8*3:m a8*3
  cs8*3:m gs8*3:7
  cs8*6:m
  %b
  e8*6
  b8*6
  a8*6:
  e8*6   %d7
  fs8*6:m
  cs8*6:m
  cs8*3:m b8*3:m
  e8*6
  cs8*3:m gs8*3:7
  e8*6
  %c
  b8*6:7
  e8*6
  b8*6:7
  e8*6
  b8*6:7
  a8*6
  cs8*3:m
  gs8*3:7
  cs8*12:m

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
    title= "Hora Fetelor"
    %composer="Sergei Lunkevitch"
    %composer= ""
    instrument = "Eb Instrument"
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
