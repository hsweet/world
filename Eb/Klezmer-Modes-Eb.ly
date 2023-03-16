\version "2.18.0"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
\header{
  title= "Klezmer Modes"
  subtitle="(In C, D & G)"

}
\markup{ \italic "C Misebeyrekh uses the same notes as D Fregish" }
dscales = {
  b'4^"Fregish"c'' dis'' e''
  fis'' g'' a'' b''
  a'' g'' fis'' e''
  dis'' c'' b' a'
  gis' a' b'2 \break

  b'4^"Mishebeyrekh" cis'' d'' eis''|
  fis'' gis'' a'' b''|
  a'' gis'' fis'' eis''
  d'' cis'' b' ais'|
  b'1|\break
}


melody = {
  \clef treble

  \key a \major
  \time 4/4

  \transpose b a \dscales       %C
  \dscales                        %D
  \transpose b e' \dscales        %G
}




%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
    }
    \new Staff \melody
  >>

  \layout{indent = 1.0\cm}
  \midi { }
}
