\version "2.24.0"
\language "english"
%\pointAndClickOff

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Dave's Chords }

melody = \transpose c d\relative c'' {
  \clef treble

  \key d \minor
  \time 2/4
  \partial 8*1 g8   %lead in notes

  %  \repeat volta 2{
  d'8 d d d
  a'4 \glissando f4
  g8 g  f e
  d4. d8|  %4

  f8 a f a
  g4 f8 e
  d4 g
  f2 \prall   %8

  %f4. e8   %end cadence
  d8-> d d-> d
  a'8 a f4
  g8-> g  f-> e
  d2|   %12

  f8 a f a
  g4 f8 e
  d4 g
  d2     %16
  % }

  %\alternative { { f4. e8}{d4 g8 f }}

  %\repeat volta 2{
  f8-> g a-> a
  a8 a a a
  bf8 a g r
  d'4 \prall d, %20
  f8 a f a

  g4 f8 e
  d4 g
  f2    %phrase end

  %2 repeats of next phrase
  a8 d c bf  %24
  a8 bf c d
  a2
  d2

  a8 d c bf  %28
  a8 bf c d
  a2 ~
  a2
  % phrase ends

  a8 c bf a
  g8 g f g|
  a8 bf a g
  f8 d c4 \fermata

  a'8 a a a
  c4 bf8 a
  d,2 ~ d2


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
  d2*2:m %r2
  g2:m d2:m
  f2 a2:7 d4:m  g4:m d2*3:m
  %r2*2 r4 g:m d2:m
  %r2*2
  g2:m d2:m
  f2 a2:7 d4:m g:m
  d2*3:m
  %end part1 meas 16

  %r2*2
  g2:m
  d2*2:m %r2
  g2:m
  d4:m
  g4:m
  d2*2:m %r2  %changes start here was r2*9
  g2:m
  d2:m
  a2:7
  d2:m
  g2:m
  d2:m
  r2*2
  g2:m
  d4*3:m
  %r4
  c4
  d2:m
  g4:m
  a4:m
  d2:m
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
    title= "L'chaim jo' Testve'rek"
instrument = "Violin"
    arranger = ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
