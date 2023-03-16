\version "2.18.0"
\include "english.ly"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }


%#################################### Melody ########################
melody = \relative c' {
  \clef treble
  \key a \minor
  \time 2/4

  %\partial 16*3 a16 d f   %lead in notes
  e4 ^\markup{Doina, not strict time} \glissando a4~
  a2
  \glissando e4 \glissando a~
  a2| \breathe

  a8 b c-3 c16-> c->|
  c8-3-> c-> r4 \breathe

  e4 d8 c|
  b16 c d e d c b a
  a4 a \fermata
  e4 a~
  a2

  a4. b8|
  c4 e
  d4-4 c-3
  \tuplet 3/2{c8 b a} \tuplet 3/2{c8 b a}
  \tuplet 3/2{c8 b a} \tuplet 3/2{c8 b a}
  a4 a ~
  a2\fermata |
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
  \partial 8 e8
  \glissando a2
  gs8 e4.|
  a2~
  a4 r

  a4. b8|
  c8 e4.
  a,2~
  a4 r|

  a4. b8|
  c8  a4.
  d4. c8
  b8 a4.

  b4 a
  gs4 f
  e2~
  e2

  a4. b8|
  c8  a4.
  d4. c8
  b8 a4.

  b4 ^\markup{(Gm)} a
  gs4 f
  e2~
  e2


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
  a2*19:m
  %r2*18
  a8:m
  e2
  a4*6:m
  %r2 r4.
  c8
  e4.
  a2*4:m
  %r2*3
  d2*2:m
  %r2
  f2*2
  %r2
  e2*2:7
  %r2
  a2*2:m
  %r2
  d2*2:m
  %r2
  f2*2
  %r2
  e2


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
