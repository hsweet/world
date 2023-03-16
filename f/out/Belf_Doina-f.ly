\version "2.18.0"
\language "english"

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

orbital = { gs16.\trill (f32 e16 f) }

melody = \relative c' {
  \clef treble
  \key a \minor
  \time 12/4
  \override Staff.TimeSignature.stencil = ##f
  r2 \fermata a4(a16)d f a
  gs8 \trill f gs16 a a a
  a2\fermata
  \orbital
  \orbital
  \orbital
  \orbital
  gs16. \trill (f32 e16 d)
  f8 d d d d4 \fermata

  a16 d f a
  gs8 f gs a a a
  a2\fermata(a8) gs(a b)
  \grace d c4 (c8 b)
  c8 b \grace a gs\trill f
  gs16 a a8 a4\fermata
  \orbital
  \orbital
  gs16. \trill (f32 e16 d)
  d8 d d4(d \fermata d16)d f a
  d16 d d8 d4(d8)a c\trill a a a
  d4\fermata (a8)gs a b
  c4(c8 b) c b
  \grace a8 gs\trill f
  gs16 a a8 a a4
  gs32(a gs8\trill f16 e f )
  \orbital
  gs16. \trill (f32 e16 d)
  d16 d8. d4(d2\fermata)


}


harmonies = \chordmode {
  d4:m
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
