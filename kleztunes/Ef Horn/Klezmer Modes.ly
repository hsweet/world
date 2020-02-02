\version "2.12.2"


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


%melody =  \transpose c d \transpose c a \relative c' {  %transpose for clarinet
melody = {
  \clef treble

  \key c \major
  \time 4/4

  \transpose d c \dscales       %C
  \dscales                        %D
  %\transpose d d'' \dscales
  \transpose d g \dscales        %G
  }




%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \transpose c a \chordmode {

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
  #(set-paper-size "letter")
      \harmonies
    }
    \new Staff \melody
  >>

  \layout{ }
  \midi { }
}
