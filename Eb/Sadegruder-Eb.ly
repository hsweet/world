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
melody = \relative c'''{
  %C instrument

  \clef treble
  \key e \minor
  \time 2/4


%%%%%%%%%%%%% A section, 1 repeat %%%%%%%%%%%%%%%%%

  \repeat volta 2{

    g8. fis16 e8 e~
    e8. fis16 g fis e8
    fis8. e16 dis8 dis
    dis16 e dis c b4

    dis16 b dis fis e b e g
    fis e fis a g fis e dis
    a'8 a a16 b c a
    b8 c b16 a g fis

    g8. fis16 e8 e~
    e8. fis16 g fis e8
    fis8. e16 dis8 dis
    dis16 e dis c b4

    b'8. fis16 a8. fis 16
    g8. e16 fis8. eis16
    g8 g fis16 e dis b
    e4. b8
  }
%%%%%%%%%%%%%% Bsection, 1 repeat%%%%%%%%%%%%%%%%

  \repeat volta 2{
    \key a \major

    e8 fis gis16 a gis a
    gis8 fis16 e gis a gis8~
    gis4 gis16 a gis a
    gis8 fis16 e fis gis e8~

    e4 gis16 a gis a
    gis8 fis16 e gis a gis8~
    gis4 fis8 fis
    e16 dis b dis e4
  }
%%%%%%%%%%%% C section, 1 repeat%%%%%%%%%%%%%%%%%%

  \repeat volta 2{

    \key e \minor
    b'2
    b2
    b4 b4
    b4 b4

    e,16 g b8 b b
    a8 r4 e8
    a8 a  g e
    g8 r4 b,8

    e16 g b8 b b
    fis8 r4 e8
    g16 d d g g eis eis e
    e2
  }

}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
harmonies = \chordmode {

  % d4 means d chord for 1/4 note
  %A section
  e:m  e:m b b
  b4 e:m b4 e:m
  a2:m b e:m e:m
  b b b4 a:m
  e4:m b e:m b
  e2:m

  %B section
  e e e e e e
  e4 b2:7 e4

  %C section
  e2:m e:m e:m e:m
  e:m a:m a:m e:m
  e:m a:m e:m e:m

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
