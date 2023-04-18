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
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
  \partial 8 b8   %lead in notes

  \repeat volta 2{
   \mark \default
   g'8 e4 e8
   g8. g16 fs8 e
   ds8 fs4.~ \break
   fs4 r8 b,


   a'8 fs4 b,8
   a'8. a16 g8 fs
   a8 g4.~ \break
   g4 r8 b,^Refrain

   e8. fs16 g8 g
   g8 fs16(g) fs8 e \break
   fs8. g16 a8 a
   a8 g16 a g8 fs

   g4 fs8 e
   ds4 fs
   e2
   b'2  \break

   e,8.(fs16) g8 g
   e8 fs g4
   e8.(fs16) g8 b
   a8 g fs4

   fs8.(g16) a8 a
   fs8 g a4
   a8.(c16)b8 a
  }
  \alternative {
    {g8 fs e4~
    e8 r8 r b}
    {b'8 ds e4~ e4 r }
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
  e2*2:m
  b2*4
  e2*4:m
  a2*2:m
  e2:m
  b2
  e2:m
  b2
  e4*7:m
  b4*8
  e:m

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
