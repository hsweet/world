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
  \key b \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c {
  \global
  \partial 8 fs8   %lead in notes

  \repeat volta 2{
   \mark \default
   d'8 b4 b8
   d8. d16 cs8 b
   as8 cs4.~ \break
   cs4 r8 fs,


   e'8 cs4 fs,8
   e'8. e16 d8 cs
   e8 d4.~ \break
   d4 r8 fs,^Refrain

   b8. cs16 d8 d
   d8 cs16(d) cs8 b \break
   cs8. d16 e8 e
   e8 d16 e d8 cs

   d4 cs8 b
   as4 cs
   b2
   fs'2  \break

   b,8.(cs16) d8 d
   b8 cs d4
   b8.(cs16) d8 fs
   e8 d cs4

   cs8.(d16) e8 e
   cs8 d e4
   e8.(g16)fs8 e
  }
  \alternative {
    {d8 cs b4~
    b8 r8 r fs}
    {fs'8 as b4~ b4 r }
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
  b2*2:m
  fs2*4
  b2*4:m
  e2*2:m
  b2:m
  fs2
  b2:m
  fs2
  b4*7:m
  fs4*8
  b:m

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
