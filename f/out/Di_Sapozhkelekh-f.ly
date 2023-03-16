\language "english"

\version "2.18.0"
% automatically converted from Di Sapozhkelekh.xml

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }
melody =  \relative c' {

  \clef "treble" \key a \minor \time 3/8 \partial 8 a8 | % 1

  c16 d16 d8. d16  | % 2
  c16 [ d16 d8. d16 ] | % 3
  c16 [ d16 e8 d8 ] | % 4
  c16 [ b16 ] a4 | % 5
  e'8 [ r16 d16 d16 c16 ] | % 6
  c8 [ r16 b16 b16 a16 ] | % 7
  c4. ( | % 8
  c4 ) c8 | % 9
  c16 [ d16 d8. d16 ] |
  c16 [ d16 d8. d16 ] | % 11
  g16 [ f16 e8. d16 ] | % 12
  c16 [ b16 ] a4 | % 13
  e'8. [ d16 c16 b16 ] | % 14
  c8. [ d16 c16 b16 ]  | % 15

  a8. [ a'16 e16 c16 ] | % 16
  a8. [ a16 c16 e16 ] | % 17
  a8 [ r16 g16 f16 e16 ] | % 18
  e8 [ r16 d16 c16 b16 ] | % 19
  d8 [ e8 e8 ]
  e4. | % 21
  a8 [ r16 g16 f16 e16 ] | % 22
  e8 [ r16 d16 c16 b16 ] | % 23
  c8 [ a8 a8 ] | % 24
  a4. | % 25
  g'8. [ f16 e16 d16 ] | % 26
  e8. [ d16 c16 b16 ] | % 27
  c8 [ d8 d8 ] | % 28
  d4. | % 29
  e8. [ d16 c16 b16 ] |
  c8. [ d16 c16 b16 ] | % 31
  a8. [ a'16 e16 c16 ] | % 32
  a4. \bar "|."
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

  s8 d16:m5 | % 2
  s16*17 a16:m5 | % 5
  s16*5 d8:m5 | % 6
  s8*5 a4.:m5 | % 8
  s4. d16:m5
  s16*17 a16:m5 | % 13
  s16*5 e8.:m5 | % 14
  s16*9 a8.:m5 | % 16
  s16*57 e8.:m5 | % 26
  s8. a8.:m5 | % 27
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

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Di Sapozhkelekh"
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
