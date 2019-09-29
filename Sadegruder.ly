\version "2.18.0"

\header{
  title= "Sadegruder Khosidl"
  %arranger= "H. Sweet"
}
\paper{
  tagline = ##f
  # print-all-headers ##t
  #(set-paper-size "letter")
}
melody = \relative c'{
  %C instrument

  \clef treble
  \key g \minor
  \time 2/4


%%%%%%%%%%%%% A section, 1 repeat %%%%%%%%%%%%%%%%%

  \repeat volta 2{

    bes'8. a16 g8 g~
    g8. a16 bes a g8
    a8. g16 fis8 fis
    fis16 g fis ees d4

    fis16 d fis a g d g bes
    a g a c bes a g fis
    c'8 c c16 d ees c
    d8 ees d16 c bes a

    bes8. a16 g8 g~
    g8. a16 bes a g8
    a8. g16 fis8 fis
    fis16 g fis ees d4

    d'8. a16 c8. a 16
    bes8. g16 a8. gis16
    bes8 bes a16 g fis d
    g4. d8
  }
%%%%%%%%%%%%%% Bsection, 1 repeat%%%%%%%%%%%%%%%%

  \repeat volta 2{
    \key c \major

    g8 a b16 c b c
    b8 a16 g b c b8~
    b4 b16 c b c
    b8 a16 g a b g8~

    g4 b16 c b c
    b8 a16 g b c b8~
    b4 a8 a
    g16 fis d fis g4
  }
%%%%%%%%%%%% C section, 1 repeat%%%%%%%%%%%%%%%%%%

  \repeat volta 2{

    \key g \minor
    d'2
    d2
    d4 d4
    d4 d4

    g,16 bes d8 d d
    c8 r4 g8
    c8 c  bes g
    bes8 r4 d,8

    g16 bes d8 d d
    a8 r4 g8
    bes16 f f bes bes gis gis g
    g2
  }

}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
harmonies = \chordmode {

  % d4 means d chord for 1/4 note
  %A section
  g:m  g:m d d
  d4 g:m d4 g:m
  c2:m d g:m g:m
  d d d4 c:m
  g4:m d g:m d
  g2:m

  %B section
  g g g g g g
  g4 d2:7 g4

  %C section
  g2:m g:m g:m g:m
  g:m c:m c:m g:m
  g:m c:m g:m g:m

}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff \melody
  >>
  \layout{indent = 1.0\cm}
  \midi { }
}
