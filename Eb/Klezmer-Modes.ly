\version "2.18.0"
\language "english"
\pointAndClickOff

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
\header{
  title= "Klezmer Modes"
instrument= "Eb"
  subtitle="(In C, D & G)"
instrument= "Eb"

}
\markup{ \italic "C Misebeyrekh uses the same notes as D Fregish" }
dscales = {
  d'4^"Fregish"ef' fs' g'
  a' bf' c'' d''
  c'' bf' a' g'
  fs' ef' d' c'
  b c' d'2 \break

  d'4^"Mishebeyrekh" e' f' gs'|
  a' b' c'' d''|
  c'' b' a' gs'
  f' e' d' cs'|
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

\score {\transpose c a
  <<
    \new ChordNames {
      \set chordChanges = ##f
    }
    \new Staff \melody
  >>

  \layout{indent = 1.0\cm}
  \midi { }
}
