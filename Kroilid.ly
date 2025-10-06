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

global = {
  \clef treble
  \key d \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}


%################################# Music Blocks ########################

sopmusicA = \relative c { 
\mark \default

e4 e8 e a4. e8
 e8 f d e cs bf a4
 f'4. f8 e d cs d 
e2. cs8 d 
e4 e8 e a4. e8 
e8 f d e cs bf a4
 d4. d8 cs bf a bf
a2 r8 a8 cs e
g4. g8 f4. f8 
e8 e d d cs d e4
 a4 a gs8 e gs b 
a2. cs,8 d 
e4 e8 e a4. e8 
e8 f d e cs bf a4
 d4. d8 cs8 bf a bf
 a2. \bar "|."
}

%#################################### Melody ########################
melody = \transpose c c'' \relative c {
  \global
  \partial 4 \relative c {cs8 d}     %lead in notes
\sopmusicA
}
%################################# Lyrics #####################





%################################# Chords #######################

harmonies = \transpose c c \chordmode { 
a1 s1 d1:m a1 s1*2 d1:m a1 
g2:m d2:m a1 a2 e2 a1 s1*2 d1:m a1
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
    instrument="Violin"
    composer="Karaite"
	opus="Copyright 2004, Cookie Segelstein, The Music of Veretski Pass"
}

  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
