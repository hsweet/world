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

%\markup{ Source filename: KMDMP 19-58-1659 - Shades Of Folk Dobriden - C.ly }

global = {
  \clef treble
  \key g \major
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}


%################################# Music Blocks ########################

sopmusicA = \relative c { 
\mark \default
d4 g a 
g16 (a b c) b2
 c16 (d c b) b (c b a) a (b a g)
 g2.
 b8. (d16) c2
 b8. (d16) c2
 b4 g a 
g16 a b c b2
 d16 c b a b a g8 g4 
d4 g a 
g16 (a b c) b2 
c16 (d c b) b (c b a) a (b a g) 
g2.
\times 2/3 { d'8 c b } a2 
c4 \times 2/3 {b8 a g fs g a}
 b8 a16 g g2
}

sopmusicB = \relative c' {
\mark \default
 d4 d d 
fs e d 
c8 d16 (c) b4 c8 e 
d2.
 g4 fs e 
g fs e 
fs8 (d) d2
 fs4 e d 
c8 d16 (c) b4 c8 e 
d2.
c8 c b4 c
d8 d e4 d
 c8 c a4 b 
c8 c d4 b 
c16 (d c b) b (c b a) a (b a g)
}
sopmusicBA = \relative c' {
 b2.
}
sopmusicBB = \relative c' {
 g2.
}

sopmusicC = \relative c' {
\mark \default
 b8. \segno d16 c4 c4
 b8. d16 a4 a4 
 \times 2/3 {d8 c b a b a g fs e}
 d2.
 b'8. d16 c4 c 
b8. d16 a4 a 
\times 2/3 {d8 e d d a b} g4
 g2. ^"Fine" 
}

sopmusicD = \relative c' {
\mark \default
 b2  g4
 b8 b g2
 b8 b g2
 c8 c a2
 c8 c a2
 \times 2/3 {d8 c d} d2
 \times 2/3 {d8 b d g fs e} d4
 \times 2/3 {c8 a c e d c} b4
 g16 a b c b2
 g2. ^"D.S. al Fine"
}


%#################################### Melody ########################
melody = \transpose c c' {
  \global

\sopmusicA 
\repeat volta 2 \sopmusicB \alternative {\sopmusicBA \sopmusicBB}
\repeat volta 2 \sopmusicC
\repeat volta 2 \sopmusicD 

}
%################################# Lyrics #####################





%################################# Chords #######################

harmonies = \transpose c c \chordmode { 
g2. s2. c4 g4 d4 g2.
s4 c2 g4 c2 g2. s2. s2. g2. s2.
c4 g4 d4 g2. d2. s2. g2.
d2. s2. c2. g2. s2. s2. d2. s2. c2 d4 g2.
c2. g2. c2. d2. c4 g4 d4 g2.
g2. g4 c2 g4 d2 s2. s2. g4 c2 g4 d2 s2 g4 s2.
g2. s2. s2. c2. s2. d2. g2. c2. d2. g2. 
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
title="\"Shades Of Folk\" Dobriden"
    subtitle="KMDMP 19-58-1659"
	instrument="Violin"
	opus="Copyright Institute of Manuscripts, Vernadsky National Library of Ukraine, CC-BY 4.0, klezmerinstitute.org"
}

  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
