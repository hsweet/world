\version "2.18.0"

\paper{
  tagline = ##f
  %print-all-headers = ##t
  #(set-paper-size "letter")
}
\header{
  title= "Belf Doina"
  %subtitle="Clarinet"
  composer= "Belf Orchestra"
  instrument =""
  arranger= "Horowitz & Segelstein"
}

%\markup{ Got something to say? }

orbital = { cis16.\trill (bes32 a16 bes) }

melody = \relative c' {
  \clef treble
  \key d \minor
  \time 12/4
  \override Staff.TimeSignature.stencil = ##f
  r2 \fermata d4(d16)g bes d
  cis8 \trill bes cis16 d d d
  d2\fermata
  \orbital
  \orbital
  \orbital
  \orbital
  cis16. \trill (bes32 a16 g)
  bes8 g g g g4 \fermata

  d16 g bes d
  cis8 bes cis d d d
  d2\fermata(d8) cis(d e)
  \grace g f4 (f8 e)
  f8 e \grace d cis\trill bes
  cis16 d d8 d4\fermata
  \orbital
  \orbital
  cis16. \trill (bes32 a16 g)
  g8 g g4(g \fermata g16)g bes d
  g16 g g8 g4(g8)d f\trill d d d
  g4\fermata (d8)cis d e
  f4(f8 e) f e
  \grace d8 cis\trill bes
  cis16 d d8 d d4
  cis32(d cis8\trill bes16 a bes )
  \orbital
  cis16. \trill (bes32 a16 g)
  g16 g8. g4(g2\fermata)


}


harmonies = \chordmode {
  g4:m
}


\score {
  <<
    \new ChordNames {
      \harmonies
    }
    \new Staff
    \melody


  >>

  \layout{

  }
  \midi { }
}
