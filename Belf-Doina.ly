\version "2.18.0"
\language "english"
%\pointAndClickOff

\paper{
  tagline = ##f
  %print-all-headers = ##t
  #(set-paper-size "letter")
}
\header{
  title= "Belf Doina"
  %subtitle="Clarinet"
  composer= "Belf Orchestra"
  instrument = "Violin"
  arranger= "Horowitz & Segelstein"
}

%\markup{ Got something to say? }

orbital = { cs16.\trill (bf32 a16 bf) }

melody = \relative c' {
  \clef treble
  \key d \minor
  \time 12/4
  \override Staff.TimeSignature.stencil = ##f
  r2 \fermata d4(d16)g bf d
  cs8 \trill bf cs16 d d d
  d2\fermata
  \orbital
  \orbital
  \orbital
  \orbital
  cs16. \trill (bf32 a16 g)
  bf8 g g g g4 \fermata

  d16 g bf d
  cs8 bf cs d d d
  d2\fermata(d8) cs(d e)
  \grace g f4 (f8 e)
  f8 e \grace d cs\trill bf
  cs16 d d8 d4\fermata
  \orbital
  \orbital
  cs16. \trill (bf32 a16 g)
  g8 g g4(g \fermata g16)g bf d
  g16 g g8 g4(g8)d f\trill d d d
  g4\fermata (d8)cs d e
  f4(f8 e) f e
  \grace d8 cs\trill bf
  cs16 d d8 d d4
  cs32(d cs8\trill bf16 a bf )
  \orbital
  cs16. \trill (bf32 a16 g)
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

  \midi{\tempo 4 = 120}
  \layout{

  }
}