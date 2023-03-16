\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \transpose gs' a\relative c'' {
  \clef treble
  \key gs \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    ds8  gs16 gs gs gs gs gs
    a8.\prall(gs16)a8 bs
    bs16(cs)cs(bs) bs(a)a(gs)|
    gs16(a)bs8~ bs16 a gs fs|
    ds8  gs16 gs gs gs gs gs|
    a8.\prall(gs16)a8 bs|
    bs16(cs)cs(bs) bs(a)a(gs)|

  }
  \alternative {
    { gs2}{ gs8 gs as bs \break}
  }

  \repeat volta 2{
  \mark \default
    \grace {bs (cs)} cs8 cs cs cs
    cs4~cs16 bs cs d
    ds8.\prall (cs16) bs8.\prall(a16)|
    bs8\prall(a)a16(gs) gs(fs)|

    fs4~fs16 bs cs d
    ds8.\prall (cs16) bs8.\prall(a16)|
    bs8\prall(a)a16(gs) gs(fs)|

  }
  \alternative {
    { gs8 gs as bs}
    {gs2 }
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
%these are in the transposed key!!!
harmonies = \chordmode {
  a2*6
  %r2*5
  g2:m
  a2*2 % r2
  d2*4:m
  g2*3:m
  a2
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
    title= "Khosidl"
    subtitle=""
    composer= "German Goldenshteyn"
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
