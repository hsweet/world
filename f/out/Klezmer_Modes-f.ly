\version "2.18.0"
\language "english"

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
  a4^"Fregish"bf cs' d'
  e' f' g' a'
  g' f' e' d'
  cs' bf a g
  fs g a2 \break

  a4^"Mishebeyrekh" b c' ds'|
  e' fs' g' a'|
  g' fs' e' ds'
  c' b a gs|
  a1|\break
}


melody = {
  \clef treble

  \key g \major
  \time 4/4

  \transpose a, g, \dscales       %C
  \dscales                        %D
  \transpose a, d \dscales        %G
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
