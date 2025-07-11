\version "2.24.0"
\include "english.ly"
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
  \key g \minor
  \time 4/4
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 4 g4    %lead in notes

  g4 bf8. bf16 a4 g8. g16
  a4 d,8. d16 d4 r8. d16|
  a'4 c bf8 bf a8. g16
  bf4 bf8. bf16 bf4 r8 a

  bf4 d c bf
  a4 c bf a8. a16|
  g8 a bf d  c4bf8. bf16|
  d4 d8. d16 d4 d \bar"||"
  %
  \break
  g8d ef c bf d a d
  g,4 bf8 d g,4 r

  f'4 ^chorus ef8 d g f ef d
  ef4 ef8 ef ef d c4

  d4 f8 d ef4 d
  c4 c8. c16 c8 a bf c|
  d4 ef8 c d4 r8 g,16 g
  g'8 g4 g8 g d ef c

  bf4 d8 bf a4 d8 bf|
  g4 bf8 d g,4 r

}
%################################# Lyrics #####################
\addlyrics{ \set stanza = #"1. "
  bri -- der  un sves -- ter fun ar -- bet un neyt
  _ a -- le vos zay -- nen tse -- zeyt un tsesh -- peyt
  tsu -- zam -- men. tsu -- zam -- en di fon iz greyt
  zi flat -- ert fun tsorn, fun _ blut iz zi reyt

  a  shv -- u -- e a shv -- u -- e, af le -- bn un teyt

  hi -- ml un erd vet undz oys -- he -- rn
  ey -- des vet zayn di likh -- ti -- ke sht -- ern
  a shv -- ue fun blut un a sh -- vue fun trern,
  mir shv -- ern, mir shv -- ern, mir shv -- vern

}
\addlyrics{ \set stanza = #"2. "
  bro -- thers and sis -- ters to-a com -- mon strugle sworn
  the count -- less before us and yet to be born
  to -- get -- her, toget -- her we'll stand the flood
  the pro -- mise we've in -- heri -- ted that _ pounds in our blood

}

%################################# Chords #######################
harmonies = \chordmode {
  g1:m
  d1*2:7
  g4*3:m f4
  bf2 c2:m
  a2:7/cs d2:7
  g4:m bf4/f c4:7/e c4:m/ef
  d4:7 c4:dim bf4:dim d4/a
  %
  g4:m c4:m g4:m d4:7
  g4:m d4:7 g2:m
  g1:7
  c2:m f2:7
  bf2 c4:m g4:7
  c2:m f2
  g4:m c4:m g4:m g4:7
  ef2 g4:7 c4:m
  g2:m/d d2:7
  g4   :m g4:/d g2:m




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
    title= ""
    subtitle=""
    composer= ""

    instrument =""
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