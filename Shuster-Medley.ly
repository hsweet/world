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

melAA = { 
\mark \default
ef'4. d'8 c'4. g8 ef'4 d' c'4. g8 
ef'4 d' c' bf8 a bf (c') a (bf) g4 r4 \break
}

melAB = { 
g8 c'4 d'8 ef'8 ef' d' c' 
f'4 ef' d'8 d' c' bf 
f8 bf4 c'8 d'8 d' c' bf
bf8 c' a bf g4 r4 \break
}

melBA = { 
\mark \default
g'8 f'16 ef'16 d'4 g'8 f'16 ef' d'4
bf8 bf c' c' bf8. a16 g4 \break
}

melBB = { 
bf8 bf c' c' d' d' f'16 ef' d' c' 
bf8 bf c' c' bf8. a16 g4^"Fine" \break
}

melC = { 
\mark \default
d'8 b' b' b' b'4 r8 b'8
a'8 b' c'' b' a'4 r8 fs'8 \break
d'8 a' a' a' a'4 r8 a'8
g'8 a' b' a' 
}

melCA = {
g'8 fs' e' d'
}
melCB = {
g'8 d' g r8^"D.C. al Fine"
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
