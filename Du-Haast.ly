\version "2.20.0"
\include "english.ly"
%\pointAndClickOff
\paper{
  tagline = #ff
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))
\markup{ \italic{ \date }  }
%\markup{https://youtu.be/3C04TKCce8s}


global = {
  \clef treble
  \key c \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 4 g4    %lead in notes
  %\repeat volta 2{
  \mark \default
  g8 e r8 e4 e8 g a
  g8 e r8 e4 e8 [g16 g a8]
  g8 e r8 e4 e8 g a
  %% \alternative {
  g8 e r8 e8 [g16 g] e8 [g16 g a8]
  g8 e r8 e4 e8 g a
  g8 e r8 e4 e8 g a
  g8 e r8 e4 e8 g a
  r4 ^\markup "solos > 2nd time" e-> e-> e->

  % }
  \break

  \repeat volta 2{
    \mark \default
    e'16-> \segno d a r  c8 b e,8->  a16  c d8 b
    r16 e d a   c b e, a c d b  r r4
    e16-> d a r  c8 b e,8-> a16  c d8 b
    r16 e d a   c b e, a c d b  r r4

    e16-> d a r  c8 b e,8->  a16  c d8 b
    r16 e d a   c b e, a c d b  r r4
    e16-> d a r  c8 b e,8-> a16  c d8 b
    r16 e d a   c b e, a c d b  r r4
  }

  \break
  \mark \default
  e,2. r8 e8
  e2. r8 e8
  g4 e2.~
  e2.  r8 e8
  g4 e2.~
  e2.  e8 e|
  b'4. r8 g2 ~ |
  g2. r8 b,

  e8 e r b e e r  b |
  %e8 e r b e e e e
  e8 e e e e e e4
  b'1\(
  g2. \)r8 e

  % r1 r1
  e8 e e e r4. e8|  %host mich gefregt
  e8 e e e r4. e8|
  e8 e e e r4. e8|
  e8 e e4-> e->
  e->    %gornisht

  \break
  \repeat volta 2{
    \mark \default
  e4 \coda  e e e|
  e4 fs8 g4 e8 r4|
  %e4 r8 fs8 g8 e r4  |
  r4 a8 a a4->r8 g
  a4 g a b8 r

  c2.  d8 c
  b1
  %fs [e] %r8|

  %g8 g g4. g8|
  %g4 fs g4 a  a b c2 d c b2. |

  %fill
  r8 b8 b fs b b b fs
  b4-> b-> b->  b->
  }

  \break
  \mark \default
  e,4->  r e-> r
  e-> e-> e-> e->
  \repeat volta 2{
  e8 e16 e e8 b  e8 e16 e e8 b
  e8 b e b  e b e fs
  a8 a16 a a8 e a8 a16 a a8 e
  a8 e a e a e a b
  c2. d8 c
  b2.r4
  %fill
  r8 b8 b fs b b b fs
  b4-> b-> b->  b->
  }

  %g8 g16 g g8 d g8 g16 g g8 d
  %g8 d g d g d g a


}
%################################# Lyrics #####################

\addlyrics{
  \repeat unfold 129 {\skip 2}
  \set stanza = #"1. "

  Du,
  Du host,
  du host mikh,
  du host mikh,
  oy, du host mikh,

  du host mikh, du host mikh,
  du host mikh ay -ne steke - le
  Oy _

  du host mikh ge -- fregt
  du host mikh ge -- fregt
  du host mikh ge -- fregt
  kh'hob gor -- nish dir ge -- zogt

  Vilst mir zayn ge -- tray far ey -- bik
  _biz -- n toyt, biz tif -- en key -- ver?
  Neyn! _ _ _
}


%################################# Chords #######################
harmonies = \chordmode {
  e1*2:m
  a1*2:m
  c1*2
  b1*2
  %
  e1*2:m

  a1*2:m
  c1
  b1
  e1*2:m
  %
  e1*16:m
  %
  e1*2:m
  a1*2:m
  %s1
  c1
  b1*2
  %
  e1*2:m
  e1*2:m
  a1*2:m
  c1
  b1*3
}

\score {
  % transpose score below
  %\transpose c d
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Du Host"
    subtitle=" "
    composer= ""

    instrument = "A/B/C/D || B/C/D || A/(solos)/E/D/B"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
