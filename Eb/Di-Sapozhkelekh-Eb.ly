
\version "2.18.0"
% automatically converted from Di Sapozhkelekh.xml

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }
melody =  \relative c'' {

  \clef "treble" \key b \minor \time 3/8 \partial 8 b8 | % 1

  d16 e16 e8. e16  | % 2
  d16 [ e16 e8. e16 ] | % 3
  d16 [ e16 fis8 e8 ] | % 4
  d16 [ cis16 ] b4 | % 5
  fis'8 [ r16 e16 e16 d16 ] | % 6
  d8 [ r16 cis16 cis16 b16 ] | % 7
  d4. ( | % 8
  d4 ) d8 | % 9
  d16 [ e16 e8. e16 ] |
  d16 [ e16 e8. e16 ] | % 11
  a16 [ g16 fis8. e16 ] | % 12
  d16 [ cis16 ] b4 | % 13
  fis'8. [ e16 d16 cis16 ] | % 14
  d8. [ e16 d16 cis16 ]  | % 15

  b8. [ b'16 fis16 d16 ] | % 16
  b8. [ b16 d16 fis16 ] | % 17
  b8 [ r16 a16 g16 fis16 ] | % 18
  fis8 [ r16 e16 d16 cis16 ] | % 19
  e8 [ fis8 fis8 ]
  fis4. | % 21
  b8 [ r16 a16 g16 fis16 ] | % 22
  fis8 [ r16 e16 d16 cis16 ] | % 23
  d8 [ b8 b8 ] | % 24
  b4. | % 25
  a'8. [ g16 fis16 e16 ] | % 26
  fis8. [ e16 d16 cis16 ] | % 27
  d8 [ e8 e8 ] | % 28
  e4. | % 29
  fis8. [ e16 d16 cis16 ] |
  d8. [ e16 d16 cis16 ] | % 31
  b8. [ b'16 fis16 d16 ] | % 32
  b4. \bar "|."
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

  s8 e16:m5 | % 2
  s16*17 b16:m5 | % 5
  s16*5 e8:m5 | % 6
  s8*5 b4.:m5 | % 8
  s4. e16:m5
  s16*17 b16:m5 | % 13
  s16*5 fis8.:m5 | % 14
  s16*9 b8.:m5 | % 16
  s16*57 fis8.:m5 | % 26
  s8. b8.:m5 | % 27
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
