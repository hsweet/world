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
  \key d \minor
  \time 2/4


%%%%%%%%%%%%% A section, 1 repeat %%%%%%%%%%%%%%%%%

  \repeat volta 2{

    f8. e16 d8 d~
    d8. e16 f e d8
    e8. d16 cs8 cs
    cs16 d cs bf a4

    cs16 a cs e d a d f
    e d e g f e d cs
    g'8 g g16 a bf g
    a8 bf a16 g f e

    f8. e16 d8 d~
    d8. e16 f e d8
    e8. d16 cs8 cs
    cs16 d cs bf a4

    a'8. e16 g8. e 16
    f8. d16 e8. ds16
    f8 f e16 d cs a
    d4. a8
  }
%%%%%%%%%%%%%% Bsection, 1 repeat%%%%%%%%%%%%%%%%

  \repeat volta 2{
    \key g \major

    d8 e fs16 g fs g
    fs8 e16 d fs g fs8~
    fs4 fs16 g fs g
    fs8 e16 d e fs d8~

    d4 fs16 g fs g
    fs8 e16 d fs g fs8~
    fs4 e8 e
    d16 cs a cs d4
  }
%%%%%%%%%%%% C section, 1 repeat%%%%%%%%%%%%%%%%%%

  \repeat volta 2{

    \key d \minor
    a'2
    a2
    a4 a4
    a4 a4

    d,16 f a8 a a
    g8 r4 d8
    g8 g  f d
    f8 r4 a,8

    d16 f a8 a a
    e8 r4 d8
    f16 c c f f ds ds d
    d2
  }

}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
harmonies = \chordmode {

  % d4 means d chord for 1/4 note
  %A section
  d:m  d:m a a
  a4 d:m a4 d:m
  g2:m a d:m d:m
  a a a4 g:m
  d4:m a d:m a
  d2:m

  %B section
  d d d d d d
  d4 a2:7 d4

  %C section
  d2:m d:m d:m d:m
  d:m g:m g:m d:m
  d:m g:m d:m d:m

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
