\version "2.20.0"
\language "english"
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
  \key b \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
  %\partial 4 g4    %lead in notes


  fs8. as16 cs8. cs16 cs8. cs16 e8. e16
  | % 2
  d8. cs16 b8*5 r16 b
  | % 3
  a8. cs16 e8. e16 e8. e16 g8. g16
  | % 4
  fs8. e16 fs8*5 r8
  | % 5
  b8. fs16 a8. a16 a8. a16 g8. g16
  | % 6
  fs8. b,16 e8*5 r16 e
  | % 7
  d8. e16 fs8. fs16 fs8. fs16 e8. e16
  | % 8
  d8. cs16 b8*5 r8
  | % 9
  b'8. fs16 a8. a16 a8. a16 g8. g16
  | % 10
  fs8. b,16 e8*5 r16 e
  | % 11
  d8. e16 fs8. fs16 fs8. fs16 e8. e16
  | % 12
  d8. cs16 b2.
  | % 13

}



%################################# Lyrics #####################
\addlyrics{ \set stanza = #"1. "
            Zog nit keyn mol az du geyst dem let -- stn veg,
            khotsh him -- len bla -- ye -- ne far -- shte -- ln blo -- ye teg.
            Ku -- men vet nokh und -- zer oys -- ge -- benk  -- te sho,
            s'vet a poyk ton und -- zer trot: mir zay -- nen do! _
            Ku -- men vet nokh und -- zer oys -- ge -- benk  -- te sho,
            s' --  vet a poyk ton und -- zer trot: mir zay -- nen do!
}
\addlyrics {
  \set stanza = #"2. "
  Fun gri -- nem pal -- men -- land biz vay -- sn land fun shney,
  mir kum -- en on mit undz -- er payn, mit und -- zer vey,
  un vu ge -- faln iz a shprits fun undz -- er blut,
  shprot -- sn vet dort undz -- er gvu -- re, undz -- er mut!
}
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
    title= "Zog nit keyn mol - Partizaner lid"
    subtitle="זאָג ניט קײן מאָל - פאַרטיזאַנער ליד"
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 80

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

%{
zog nit keyn mol az du geyst dem letstn veg,
khotsh himlen blayene farshteln bloye teg.
kumen vet nokh undzer oysgebenkte sho,
s'vet a poyk ton undzer trot: mir zaynen do!

fun grinem palmenland biz vaysn land fun shney,
mir kumen on mit undzer payn, mit undzer vey,
un vu gefaln iz a shprits fun undzer blut,
shprotsn vet dort undzer gvure, undzer mut!

s'vet di morgnzun bagildn undz dem haynt,
un der nekhtn vet farshvindn mit dem faynt,
nor oyb farzamen vet di zun in der kayor –
vi a parol zol geyn dos lid fun dor tsu dor.

dos lid geshribn iz mit blut un nit mit blay,
s'iz nit keyn lidl fun a foygl oyf der fray,
dos hot a folk tsvishn falndike vent
dos lid gezungen mit naganes in di hent.

to zog nit keyn mol, az du geyst dem letstn veg,
khotsh himlen blayene farshteln bloye teg.
kumen vet nokh undzer oysgebenkte sho –
es vet a poyk ton undzer trot: mir zaynen do!

 Never say this is the final road for you,
Though leadened skies may cover over days of blue.
As the hour that we longed for is so near,
Our step beats out the message: we are here!

From lands so green with palms to lands all white with snow.
We shall be coming with our anguish and our woe,
And where a spurt of our blood fell on the earth,
There are courage and our spirit have rebirth!

The early morning sun will brighten our day,
And yesterday with our foe will fade away,
But if the sun delays and in the east remains –
This song as password generations must remain.

This song was written with our blood and not with lead,
It's not a little tune that birds sing overhead,
A people amid collapsing walls,
Sang this song with pistols in hand.

Therefore never say the road now ends for you,
Though leadened skies may cover over days of blue.
As the hour that we longed for is so near,
Our step beats out the message: we are here!
%}