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
  d'4^"Fregish"ees' fis' g'
  a' bes' c'' d''
  c'' bes' a' g'
  fis' ees' d' c'
  b c' d'2 \break

  d'4^"Mishebeyrekh" e' f' gis'|
  a' b' c'' d''|
  c'' b' a' gis'
  f' e' d' cis'|
  d'1|\break
}


melody = {
  \clef treble

  \key c \major
  \time 4/4

  \transpose d c \dscales       %C
  \dscales                        %D
  \transpose d g \dscales        %G
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
