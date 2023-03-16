\version "2.18.0"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Dave's Chords }

melody = \transpose a b\relative c' {
  \clef treble

  \key b \minor
  \time 2/4
  \partial 8*1 e8   %lead in notes

  %  \repeat volta 2{
  b'8 b b b
  fis'4 \glissando d4
  e8 e  d cis
  b4. b8|  %4

  d8 fis d fis
  e4 d8 cis
  b4 e
  d2 \prall   %8

  %f4. e8   %end cadence
  b8-> b b-> b
  fis'8 fis d4
  e8-> e  d-> cis
  b2|   %12

  d8 fis d fis
  e4 d8 cis
  b4 e
  b2     %16
  % }

  %\alternative { { f4. e8}{d4 g8 f }}

  %\repeat volta 2{
  d8-> e fis-> fis
  fis8 fis fis fis
  g8 fis e r
  b'4 \prall b, %20
  d8 fis d fis

  e4 d8 cis
  b4 e
  d2    %phrase end

  %2 repeats of next phrase
  fis8 b a g  %24
  fis8 g a b
  fis2
  b2

  fis8 b a g  %28
  fis8 g a b
  fis2 ~
  fis2
  % phrase ends

  fis8 a g fis
  e8 e d e|
  fis8 g fis e
  d8 b a4 \fermata

  fis'8 fis fis fis
  a4 g8 fis
  b,2 ~ b2


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
  b2*2:m %r2
  e2:m b2:m
  d2 fis2:7 b4:m  e4:m b2*3:m
  %r2*2 r4 g:m d2:m
  %r2*2
  e2:m b2:m
  d2 fis2:7 b4:m e:m
  b2*3:m
  %end part1 meas 16

  %r2*2
  e2:m
  b2*2:m %r2
  e2:m
  b4:m
  e4:m
  b2*2:m %r2  %changes start here was r2*9
  e2:m
  b2:m
  fis2:7
  b2:m
  e2:m
  b2:m
  r2*2
  e2:m
  b4*3:m
  %r4
  a4
  b2:m
  e4:m
  fis4:m
  b2:m
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
