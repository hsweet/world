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

%\markup{ Source filename: ShusterMedley_C.ly }

global = {
  \clef treble
  \key g \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}


%################################# Music Blocks ########################

melAA = \relative c' { 
\mark \default
ef4. d8 c4. g8 ef'4 d c4. g8 
ef'4 d c bf8 a bf (c) a (bf) g4 r4 \break
}

melAB = \relative c' { 
g8 c4 d8 ef8 ef d c 
f4 ef d8 d c bf 
f8 bf4 c8 d8 d c bf
bf8 c a bf g4 r4 \break
}

melBA = \relative c'' { 
\mark \default
g8 f16 ef16 d4 g8 f16 ef d4
bf8 bf c c bf8. a16 g4 \break
}

melBB = \relative c' { 
bf8 bf c c d d f16 ef d c 
bf8 bf c c bf8. a16 g4^"Fine" \break
}

melC = \relative c' { 
\mark \default
d8 b' b b b4 r8 b8
a8 b c b a4 r8 fs8 \break
d8 a' a a a4 r8 a8
g8 a b a 
}

melCA = \relative c'' {
g8 fs e d
}
melCB = \relative c'' {
g8 d g, r8^"D.C. al Fine"
}


%#################################### Melody ########################
melody = \transpose c c' {
  \global
\repeat volta 2 \melAA
\repeat volta 2 \melAB
\repeat volta 2 \melBA
\repeat volta 2 \melBB
\repeat volta 2 \melC \alternative {\melCA \melCB}

}
%################################# Lyrics #####################





%################################# Chords #######################

harmonies = \transpose c c' \chordmode { 
c2:m s2*5 g2:m s2
c2:m s2 bf2 s2 g2:m bf2 d2:7 g2:m
g2:m s2 bf4 c4:m d4:7 g4:m
bf4 c4:m g4:m d4:7 bf4 c4:m d4:7 g4:m
g2 s2 a2:m s2 d2 s2 g2 s2 
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
    title="Shuster (Shoemaker) Medley"
	instrument="Violin"
    opus="M. Beregovsky, Jewish Instrumental Folk Music #233, 234 and Schwabische Turkei Schuster from Horak 1961"
}

  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
