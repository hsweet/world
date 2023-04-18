\version "2.18.0"

\paper{
tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }
%\markup{ Got something to say? }

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \transpose d c \relative c' {
  \clef treble
  \key e \minor
  \time 4/4

  \partial 8*3 b8 e g  %lead in notes

  \repeat volta 2{
    b4 ^\markup { \box A}b ais b
    g8 fis e4(e8)b e g|
    b4 b ais g|
    cis8 d b4(b8) b cis d|%4

    e4 b ais b
    g8 fis e4(e8) e fis g
    a4. c8 b a g fis
    e1|

  }


  %\repeat volta 2{
  r2 r8 e' ^\markup { \box B} dis [e]
  c4 r r8 e dis [e]
  b4  r r8 fis g [a] %?
  b4 b b b
  b8. a16 g8 a b e dis e|
  c4 r r8 e8 dis ^\markup{ play out } [e]
  % }
  % \alternative { { }{ } }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \transpose d c \chordmode {
  s8*3 e1*6:m  a2:m b2:7 e1:m
  %b section
  s2 e2:m s1*2 b1:7 s2 e2:m a1:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff 
      \melody
  >>
  \header{
    title= "Chosn Kalah Mazel Tov"
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
