\version "2.18.0"
\language "english"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Dave's Chords }

melody = \transpose g, a,\relative c' {
  \clef treble

  \key a \minor
  \time 2/4
  \partial 8*1 d8   %lead in notes

  %  \repeat volta 2{
  a'8 a a a
  e'4 \glissando c4
  d8 d  c b
  a4. a8|  %4

  c8 e c e
  d4 c8 b
  a4 d
  c2 \prall   %8

  %f4. e8   %end cadence
  a8-> a a-> a
  e'8 e c4
  d8-> d  c-> b
  a2|   %12

  c8 e c e
  d4 c8 b
  a4 d
  a2     %16
  % }

  %\alternative { { f4. e8}{d4 g8 f }}

  %\repeat volta 2{
  c8-> d e-> e
  e8 e e e
  f8 e d r
  a'4 \prall a, %20
  c8 e c e

  d4 c8 b
  a4 d
  c2    %phrase end

  %2 repeats of next phrase
  e8 a g f  %24
  e8 f g a
  e2
  a2

  e8 a g f  %28
  e8 f g a
  e2 ~
  e2
  % phrase ends

  e8 g f e
  d8 d c d|
  e8 f e d
  c8 a g4 \fermata

  e'8 e e e
  g4 f8 e
  a,2 ~ a2


  %}


}
%************************Lyrics Block****************

\addlyrics{
L' -- chaim jo' test -- ve' -- rek, ig -- ya -- t -- ok ve -- lem
A ha- zi- gaz- da e'- l- jen sok -- a'- ig.
Ad -- jon a Jo' In nek -- tek e's ne -- kunk
Ege'szse'get fejtol boka'ig.
A Jo' In segi'tsen, hogy a Messia's jojjon.
Jaj, csak segi'tene szapora'n.
Akkor leszu nk mi majd nagy urak,
Folyik a bor aka'r a patak.
L'chaim jo' testve'rek, vigan egyut e'lnek,
L'shono ha-bo biYrushalayim.
}


harmonies = \chordmode {
  a2*2:m %r2
  d2:m a2:m
  c2 e2:7 a4:m  d4:m a2*3:m
  %r2*2 r4 g:m d2:m
  %r2*2
  d2:m a2:m
  c2 e2:7 a4:m d:m
  a2*3:m
  %end part1 meas 16

  %r2*2
  d2:m
  a2*2:m %r2
  d2:m
  a4:m
  d4:m
  a2*2:m %r2  %changes start here was r2*9
  d2:m
  a2:m
  e2:7
  a2:m
  d2:m
  a2:m
  r2*2
  d2:m
  a4*3:m
  %r4
  g4
  a2:m
  d4:m
  e4:m
  a2:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "L'chaim jo' Testve'rek"
    arranger = ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
