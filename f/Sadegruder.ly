\version "2.18.0"
\language "english"

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

    bf'8. a16 g8 g~
    g8. a16 bf a g8
    a8. g16 fs8 fs
    fs16 g fs ef d4

    fs16 d fs a g d g bf
    a g a c bf a g fs
    c'8 c c16 d ef c
    d8 ef d16 c bf a

    bf8. a16 g8 g~
    g8. a16 bf a g8
    a8. g16 fs8 fs
    fs16 g fs ef d4

    d'8. a16 c8. a 16
    bf8. g16 a8. gs16
    bf8 bf a16 g fs d
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
    g16 fs d fs g4
  }
%%%%%%%%%%%% C section, 1 repeat%%%%%%%%%%%%%%%%%%

  \repeat volta 2{

    \key g \minor
    d'2
    d2
    d4 d4
    d4 d4

    g,16 bf d8 d d
    c8 r4 g8
    c8 c  bf g
    bf8 r4 d,8

    g16 bf d8 d d
    a8 r4 g8
    bf16 f f bf bf gs gs g
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
