\version "2.18.0"
\include "english.ly"
%\pointAndClickOff
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}

date = #(strftime "%d-%m-%Y" (localtime (current-time)))
\markup{ \italic{ " Updated " \date } }

%\markup{ Source filename: khotinskaya.ly }

global = {
  \clef treble
  \key g \major 
  \time 4/4 
  \set Score.markFormatter = #format-mark-box-alphabet
}


%################################# Music Blocks ########################

melodyA = {
\key g \major
\time 4/4 
g8 g g g a4 g 
c' b a g 
b8 g b d' c'4 a 
c' b a g 
g8 g g g a4 g 
c'4 b a g 
b8 g b d' c'4 a 
}

aenda = { g1 }
aendb = {
g2^"Fine" g8 g a b
}

melodyB = {
c'4 \segno c' g2
c'8 b c' b a2
c'8 b d' c' b a c' b 
}

benda = {
a8 g b a g g a b
}
bendb = {
a8 g b a g2^"D.C. al Fine"
}

melodyC = {
d'1 
d'1
d'2 d'2
d'2 d'2
d'4 g d'2
d'8 c' c' b d'2
d'4 g d'2
d'8 c' c' b d'2
c'4 g c'2
d'4 bf a g 
bf8 bf bf d' c' c' c' d' 
}

cenda = { g1 }
cendb = {
 g2 (g8) g8 a b^"D.S."
}


%#################################### Melody ########################
melody = \transpose c c' {
  \global

\mark \default \repeat volta 2 \melodyA \alternative { \aenda \aendb } \break
\mark \default \repeat volta 2 \melodyB \alternative { \benda \bendb } \break
\mark \default \repeat volta 2 \melodyC \alternative { \cenda \cendb } \break

}
%################################# Lyrics #####################





%################################# Chords #######################

harmonies = \transpose c c \chordmode { 
g1 c2 g2 g2 a2:m d2:7 g2 g1
c2 g2 g2 d2:7 g1 g1 c1 a1:m
d2 g2 d2:7 g2 d2:7 g2 g1 d1 g2 d2
g2 d2:7 g1 d2 g2 g1 d2 g2 c1:m
g1:m g2:m c2:m g1:m g2:m g2
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      #(set-paper-size "letter")
      #(set-paper-size "letter")
      \harmonies
    }
    \new Staff
    \melody
  >>


\header {
  title = "Khotinskaya"
  instrument="Violin"
  composer="Belf's Romanian Orchestra"
}

  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
