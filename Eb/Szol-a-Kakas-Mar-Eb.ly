\version "2.18.0"
\include "nederlands.ly"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }


%#################################### Melody ########################
melody = \relative c'' {
  \clef treble
  \key b \minor
  \time 2/4

  %\partial 16*3 a16 d f   %lead in notes
  fis4 ^\markup{Doina, not strict time} \glissando b4~
  b2
  \glissando fis4 \glissando b~
  b2| \breathe

  b8 cis d-3 d16-> d->|
  d8-3-> d-> r4 \breathe

  fis4 e8 d|
  cis16 d e fis e d cis b
  b4 b \fermata
  fis4 b~
  b2

  b4. cis8|
  d4 fis
  e4-4 d-3
  \tuplet 3/2{d8 cis b} \tuplet 3/2{d8 cis b}
  \tuplet 3/2{d8 cis b} \tuplet 3/2{d8 cis b}
  b4 b ~
  b2\fermata |
  \bar ".."

  \break
  %{
<<{
     \partial 8 a8
  \glissando d2
  cis8 a4.|
  d2~
  d4 r

  d4. e8|
  f8 a4. \partial 8 a8
  \glissando
  d,2~
  d4 r|

  d4. e8|
  f8  d4.
  g4. f8
  e8 d4.

  e4 d
  cis4 bes
  a2~
  a2

  d4. e8|
  f8  d4.
  g4. f8
  e8 d4.

  e4 ^\markup{(Gm)} d
  cis4 bes
  a2~
  a2
}
\\{
  \partial 8 f8~
  f2
  e2
  d2
  r2
  f2
  c2
  d2
}>>
  %}
  \partial 8 fis8
  \glissando b2
  ais8 fis4.|
  b2~
  b4 r

  b4. cis8|
  d8 fis4.
  b,2~
  b4 r|

  b4. cis8|
  d8  b4.
  e4. d8
  cis8 b4.

  cis4 b
  ais4 g
  fis2~
  fis2

  b4. cis8|
  d8  b4.
  e4. d8
  cis8 b4.

  cis4 ^\markup{(Gm)} b
  ais4 g
  fis2~
  fis2


}
%################################# Lyrics #####################
\addlyrics{
  \repeat unfold 46 \skip1
  Szól a ka -- kas már
  majd meg -- vir -- rad már
  Zöld er -- dõ -- ben sík me -- zõ -- ben
  sé -- tál egy ma -- dár
  Zöld er -- dõ -- ben sík me -- zõ -- ben
  sé -- tál egy ma -- dár
}

\addlyrics {
  \repeat unfold 46 \skip1
  Mic -- so -- da ma -- dár
  mic -- so -- da ma -- dár
  Kék a lá -- ba zöld a sz -- árn -- ya
  en -- gem oda vár
  Kék a lá -- ba zöld a sz -- árn -- ya
  en -- gem oda vár
}

\addlyrics {
  \repeat unfold 46 \skip1
  Várj ma -- dár várj
  te cs -- ak min -- dig várj
  Ha az is -- ten né -- kem ren -- de -- lt
  tied les -- zek már
  Ha az is -- ten né -- kem ren -- de -- lt
  tied les -- zek már
}

\addlyrics {
  \repeat unfold 46 \skip1
  Mik -- or lesz az már
  mik -- or lesz az már
  Jiboné ha -- mik -- dosh ir t -- zi -- on tö -- malé
  ak -- kor lesz az már

}
%################################# Chords #######################
harmonies = \chordmode {
  %diona
  b2*19:m
  %r2*18
  b8:m
  fis2
  b4*6:m
  %r2 r4.
  d8
  fis4.
  b2*4:m
  %r2*3
  e2*2:m
  %r2
  g2*2
  %r2
  fis2*2:7
  %r2
  b2*2:m
  %r2
  e2*2:m
  %r2
  g2*2
  %r2
  fis2


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
    title= "Szól a Kakas Már"
    subtitle=""
    composer= ""
    instrument =""
    arranger= "h.s."
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}


\markup{ A chord inversion }
%{
szól a kakas már
majd megvirrad már
zöld erdõben sík mezõben
sétál egy madár

micsoda madár
micsoda madár
kék a lába zöld a szárnya
engem oda vár

várj madár várj
te csak mindig várj
ha az isten nékem rendelt
tied leszek már

mikor lesz az már
mikor lesz az már
jiboné hamikdosh ir tzion tömalé
akkor lesz az már
%}
