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

%\markup{ Source filename: Kroilid-C.ly }
%\markup{ Note: C part was generated from Bb part - see transpose statements }

global = {
  \clef treble
  \key e \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}


%################################# Music Blocks ########################

sopmusicA = { 
\mark \default

fs4 fs8 fs b4. fs8
 fs8 g e fs ds c b,4
 g4. g8 fs e ds e 
fs2. ds8 e 
fs4 fs8 fs b4. fs8 
fs8 g e fs ds c b,4
 e4. e8 ds c b, c 
b,2. r4
a4. a8 g4. g8 
fs8 fs e e ds e fs4
 b4 b as8 fs as cs' 
b2. ds8 e 
fs4 fs8 fs b4. fs8 
fs8 g e fs ds c b,4
 e4. e8 ds8 c b, c
 b,2. \bar "|."
}

%#################################### Melody ########################
melody = \transpose c bf' {
  \global
  \partial 4 ds8 e     %lead in notes
\sopmusicA
}
%################################# Lyrics #####################





%################################# Chords #######################

harmonies = \transpose c bf' \chordmode { 
b1
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      #(set-paper-size "letter")
      #(set-paper-size "letter")
	  s4
      \harmonies
    }
    \new Staff
    \melody
  >>


\header {
    title="Kroilid"
    composer="Karaite"
	opus="Copyright 2004, Cookie Segelstein, The Music of Veretski Pass"
}

  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
