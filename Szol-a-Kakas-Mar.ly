\version "2.24.0"
\include "english.ly"
%\pointAndClickOff

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
  \key d \minor
  \time 2/4

  %\partial 16*3 a16 d f   %lead in notes
  a4 ^\markup{Doina, not strict time} \glissando d4~
  d2
  \glissando a4 \glissando d~
  d2| \breathe

  d8 e f-3 f16-> f->|
  f8-3-> f-> r4 \breathe

  a4 g8 f|
  e16 f g a g f e d
  d4 d \fermata
  a4 d~
  d2

  d4. e8|
  f4 a
  g4-4 f-3
  \tuplet 3/2{f8 e d} \tuplet 3/2{f8 e d}
  \tuplet 3/2{f8 e d} \tuplet 3/2{f8 e d}
  d4 d ~
  d2\fermata |
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
  \partial 8 a8
  \glissando d2
  cs8 a4.|
  d2~
  d4 r

  d4. e8|
  f8 a4.
  d,2~
  d4 r|

  d4. e8|
  f8  d4.
  g4. f8
  e8 d4.

  e4 d
  cs4 bf
  a2~
  a2

  d4. e8|
  f8  d4.
  g4. f8
  e8 d4.

  e4 ^\markup{(Gm)} d
  cs4 bf
  a2~
  a2


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
  d2*19:m
  %r2*18
  d8:m
  a2
  d4*6:m
  %r2 r4.
  f8
  a4.
  d2*4:m
  %r2*3
  g2*2:m
  %r2
  bf2*2
  %r2
  a2*2:7
  %r2
  d2*2:m
  %r2
  g2*2:m
  %r2
  bf2*2
  %r2
  a2


}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Szól a Kakas Már"
    subtitle=""
    composer= ""
    instrument = "Violin"
    arranger= "h.s."
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
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
