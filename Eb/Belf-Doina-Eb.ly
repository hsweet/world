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

orbital = { ais16.\trill (g'32 fis'16 g') }

melody = \relative c'' {
  \clef treble
  \key b \minor
  \time 12/4
  \override Staff.TimeSignature.stencil = ##f
  r2 \fermata b4(b16)e g b
  ais8 \trill g ais16 b b b
  b2\fermata
  \orbital
  \orbital
  \orbital
  \orbital
  ais16. \trill (g32 fis16 e)
  g8 e e e e4 \fermata

  b16 e g b
  ais8 g ais b b b
  b2\fermata(b8) ais(b cis)
  \grace e d4 (d8 cis)
  d8 cis \grace b ais\trill g
  ais16 b b8 b4\fermata
  \orbital
  \orbital
  ais16. \trill (g32 fis16 e)
  e8 e e4(e \fermata e16)e g b
  e16 e e8 e4(e8)b d\trill b b b
  e4\fermata (b8)ais b cis
  d4(d8 cis) d cis
  \grace b8 ais\trill g
  ais16 b b8 b b4
  ais32(b ais8\trill g16 fis g )
  \orbital
  ais16. \trill (g32 fis16 e)
  e16 e8. e4(e2\fermata)


}


harmonies = \chordmode {
  e4:m
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
