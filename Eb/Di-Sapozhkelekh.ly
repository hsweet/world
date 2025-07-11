\language "english"
%\pointAndClickOff

\version "2.18.0"
% automatically converted from Di Sapozhkelekh.xml

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }
melody =  \relative c {

  \clef "treble" \key d \minor \time 3/8 \partial 8 d8 | % 1

  f16 g16 g8. g16  | % 2
  f16 [ g16 g8. g16 ] | % 3
  f16 [ g16 a8 g8 ] | % 4
  f16 [ e16 ] d4 | % 5
  a'8 [ r16 g16 g16 f16 ] | % 6
  f8 [ r16 e16 e16 d16 ] | % 7
  f4. ( | % 8
  f4 ) f8 | % 9
  f16 [ g16 g8. g16 ] |
  f16 [ g16 g8. g16 ] | % 11
  c16 [ bf16 a8. g16 ] | % 12
  f16 [ e16 ] d4 | % 13
  a'8. [ g16 f16 e16 ] | % 14
  f8. [ g16 f16 e16 ]  | % 15

  d8. [ d'16^chorus a16 f16 ] \bar"||" | % 16
  \break
  d8. [ d16 f16 a16 ] | % 17
  d8 [ r16 c16 bf16 a16 ] | % 18
  af8 [ r16 g16 f16 e16 ] | % 19
  af8 [ a8 a8 ]
  a4. | % 21
  d8 [ r16 c16 bf16 a16 ] | % 22
  af8 [ r16 g16 f16 e16 ] | % 23
  f8 [ d8 d8 ] | % 24
  d4. | % 25
  c'8. [ bf16 a16 g16 ] | % 26
  a8. [ g16 f16 e16 ] | % 27
  f8 [ g8 g8 ] | % 28
  g4. | % 29
  a8. [ g16 f16 e16 ] |
  f8. [ g16 f16 e16 ] | % 31
  d8. [ d'16 a16 f16 ] | % 32
  d4. \bar "|."
}

\addlyrics {
  Far -- koy -- fn di za -- posh -- ke -- lekh
  un for -- n oyf di drosh -- ke -- lekh,
  abi mit dir in e -- y -- nem tsu zayn.
  Oy ikh on dir un du on mir, \skip2
  vi a klyam -- ke on a tir,
  ke  -- e  -- tse -- le,
  fey -- ey -- ge -- le mayn

  Tai -- ra -- ra -- ra,
  Tai -- ra -- ra -- ra
  Tai -- ra -- ra -- ra
  Tai -- ra -- ra
  Tai -- ra -- ra ra
  etc.
}

\addlyrics{
  Oy forn oyf di vag -- zo -- lek -- hlekh,
  un far -- koyfn frem -- de sho -- lek -- hlekh,
}
\addlyrics{
}
\addlyrics{
  Oy es -- sen on a tis -- he -- le,
  un shlo -- fn on a kis -- he -- le,
}

\addlyrics{
  Oy shlofn oyf di vag -- zo -- lek -- hlekh,
  un vas -- hn frem -- de po -- lek -- hlekh,
}
harmonies =  \chordmode {

  s8
  g8*9:m
  d8*3:m
  g8*6:m
  d8*6:m
  g8*9:m
  d8*6:m
  a8*3:7
  d8*30:m
  f8*6
  g8*6:m
  d8*3:m
  a8*3:7
  d8*3:m

  %{
  a8.:m | % 14
  s16*9 d8.:m | % 16
  s16*57 a8.:m | % 26
  s8. d8.:m | % 27
  %}
}

%{
\markup{
  Farkoyfn di zaposhkelekh un forn oyf di droshkelekh,
  abi mit dir in eynem tsu zayn. Oy ikh on dir un du on mir,
  vi a klyamke on a tir, ketsele feygele mayn.

  Oy forn oyf di vagzolekhlekh, un farkoyfn fremde
  sholekhlekh, abi mit dir in eynem tsu zayn.

  Oy, ikh on dir un du on mir ,vi a klyamke on a tir,
  ketsele feygele mayn.

  Oy ezn on a tishele, un shlofn on a kishele,
  abi mit dir in eynem tsu zayn.

  Oy, ikh on dir un du on mir ,vi a klyamke on a tir,
  ketsele feygele mayn.

  Oy shlofn oyf di vagzolekhlekh un vashn fremde
  polekhlekh, abi mit dir in eynem tsu zayn.

  Oy, ikh on dir un du on mir ,vi a klyamke on a tir,
  ketsele feygele mayn.

}
%}

\score {\transpose c a\transpose f c'
  <<
    \new ChordNames {
      \set chordChanges = ##f
       \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Di Sapozhkelekh"
    subtitle=""
    composer= ""
    instrument = "Eb"
    arranger= ""
  }
  
  \layout{indent = 1.0\cm}
}
