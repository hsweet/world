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

%\markup{ Source filename: KMDMP 01-36-946 - Lerners Frailach C leadsheet - Eric Rangell.ly }

global = {
  \clef treble
  \key g \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}


%################################# Music Blocks ########################

sopmusicA = \relative c'' { 
\mark \default
g8. a16 g8. a16 g8 a8 
g2 d4
g8. a16 g8. a16 g8 a 
g2 d4 
bf'8. c16 bf8. c16 bf8 c8 
bf2 g4
bf8. c16 bf8. c16 bf8 c8 
bf2 g4
d'4 d4. c8
d8 d8 c4. r8
bf8. a16 g8 a bf c
g4 r4 r8 g8 
}

sopmusicB = \relative c'' {
\mark \default
bf8. d16 c4 c4
g8. g16 bf2
bf8. d16 c4 g'8. g,16
g8. g16 bf2
bf16 bf8. f2 
\times 2/3 {bf8 a8 bf8} c2
}

sopmusicBA = \relative c'' {
bf8. a16 g8 a bf c 
d16 d8. bf4 g
}

sopmusicBB = \relative c'' { 
bf8. a16 g8 ef' d c 
bf8. a16 g4 \fermata r8 g16 g16 
}

sopmusicC = \relative c'' {
\mark \default
bf2. \fermata
c8-> (bf8) c-> (bf) c-> (bf)
g4 g g 
c8-> (bf8) c-> (bf) c-> (bf)
g4 g g 
ef'4 d4. c8 
d8 d c2 
bf8. a16 g8 a bf c 
}

sopmusicCA = \relative c'' {
d16 d8. bf4 g8 r16 g16
}

sopmusicCB = \relative c'' {
g4 r4 r8 g8
}

sopmusicD = \relative c'' {
\mark \default
bf8. d16 c4 c4 
g4 bf2 
bf8. d16 c4 g'8. g,16 
g8. g16 bf2 
bf16 bf8. f2 
\times 2/3 {bf8 a bf} c2 
bf8. a16 g8 ef' d c 
bf8. a16 g2
}


%#################################### Melody ########################
melody = \transpose c c \relative c' {
  \global
  \partial 8 \relative c' {d8}    %lead in notes

\sopmusicA 
\repeat volta 2 \sopmusicB \alternative {\sopmusicBA \sopmusicBB}
\repeat volta 2 \sopmusicC \alternative {\sopmusicCA \sopmusicCB}
\repeat volta 2 { \sopmusicD }

}
%################################# Lyrics #####################





%################################# Chords #######################

harmonies = \transpose c c \chordmode { 
g2.:m s2. s2. s2. bf2. s2. 
g2.:m7 s2. d2. s2. d2.:7 g2.:m
c2.:m g2.:m c2.:m g2.:m bf2. c2.:m
d2.:7 g2.:m d2.:7 g2.:m g2.:m c2.:m g2.:m
c2.:m g2.:m c2.:m d2. d2.:7 g2.:m g2.:m
c2.:m g2.:m c2.:m g2.:m bf2. c2.:m d2.:7 g2.:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      #(set-paper-size "letter")
      #(set-paper-size "letter")
	  s8
      \harmonies
    }
    \new Staff
    \melody
  >>


\header {
    title="Lerner's Freylach"
    subtitle="KMDMP 01-36-946"
    instrument="Violin"
    composer="Yekhiel Lerner of Kremenets"
	opus="Copyright Institute of Manuscripts, Vernadsky National Library of Ukraine, CC-BY 4.0, klezmerinstitute.org"
}

  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
