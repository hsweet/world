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
  \key cs \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  \partial 8 gs8   %lead in notes

  \repeat volta 2{
   \mark \default
   e'8 cs4 cs8
   e8. e16 ds8 cs
   bs8 ds4.~ \break
   ds4 r8 gs,


   fs'8 ds4 gs,8
   fs'8. fs16 e8 ds
   fs8 e4.~ \break
   e4 r8 gs,^Refrain

   cs8. ds16 e8 e
   e8 ds16(e) ds8 cs \break
   ds8. e16 fs8 fs
   fs8 e16 fs e8 ds

   e4 ds8 cs
   bs4 ds
   cs2
   gs'2  \break

   cs,8.(ds16) e8 e
   cs8 ds e4
   cs8.(ds16) e8 gs
   fs8 e ds4

   ds8.(e16) fs8 fs
   ds8 e fs4
   fs8.(a16)gs8 fs
  }
  \alternative {
    {e8 ds cs4~
    cs8 r8 r gs}
    {gs'8 bs cs4~ cs4 r }
  }



}
%################################# Lyrics #####################
\addlyrics{ \set stanza = #"1. "

 Le -- khay -- im a shnep -- sl lo -- mir makh -- hn,
 Le -- khay -- im far a -- le gu --te zak -- hn
 To heybt di glez -- lekn un rag -- lay -- im
 Lo -- mir a -- le trink -- en Le -- khay -- im
 Le -- khay -- im, Le -- khay -- im! _
 Le -- khay -- im, Le -- khay -- im
 Le -- khay -- im, Le -- khay -- im
 Le -- khay -- im, Le -- khay -- im
 Le -- khay -- im, Le -- khay -- im
 _ Le -- khay -- im!
}
\addlyrics{ \set stanza = #"2. "
Le -- khay -- im fun ts -- ores met nit vi -- sn
Le -- khay -- im nor fun freyd gen -- i-- sn
}
\addlyrics{ \set stanza = #"3. "
 Le -- khay -- im far sho -- lem lo -- mir shtre -- bn
 Le -- khay -- im far glick un freyd gen -- ni -- sn
}
\addlyrics{ \set stanza = #"4. "
Le -- khay -- im far dem land dem nay -- em _
Le -- khay -- im for dem land dem fray -- en
}
%################################# Chords #######################
harmonies = \chordmode {
  s8
  cs2*2:m
  gs2*4
  cs2*4:m
  fs2*2:m
  cs2:m
  gs2
  cs2:m
  gs2
  cs4*7:m
  gs4*8
  cs:m

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
    title= "Lekhayam"
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
