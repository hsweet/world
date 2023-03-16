\version "2.18.0"


\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }
%\markup{ Got something to say? }

melody = \relative c'' {
  \clef treble

  \key cis \minor
  \time 3/4

  gis8 cis16 cis cis8 cis cis cis
  dis8. fis16 e4. e8
  dis8. cis16 dis4 e
  dis4  cis4. cis8

  gis8 cis cis4 cis|
  dis8. fis16 e4. e8
  dis8. cis16 dis4 e
  dis4 cis2|

  \repeat volta 2{
    gis'8. fis16 e4 e
    e8. dis16 cis4 cis
    gis'8. fis16 e4 e

  }

  \alternative {
    { dis8. cis16 gis'2}
    { dis8. gis,16 cis2}
  }



}
%************************Lyrics Block****************
\addlyrics{
  Bayt zhe mir oys a finf- un- tsvan- tsi- ker
  Oyf sa- me- rod- ne dray- er
  Un shpilt zhe mir, klez- mo- rim- lech A li- de- le, a tay- er

  Rom- tshe rim- tshe, rom- tshe rim- tshe
  Rom- tshe rim- tshe, rom- tshe- ray
}
\addlyrics{
  Bayt zhe mir oys a finf- un- tsvan- tsi- ker
  Oyf sa- me- rod- ne fir- er
  Un shpilt zhe mir, klez- mo- rim- lech
  Dos ze -- bi -- ke, vi fri- er
}

\addlyrics{
  Bayt zhe mir oys a finf- un- tsvan- tsi- ker
  Oyf sa- me- rod- ne tsen- er
  Un shpilt zhe mir, klez- mo- rim- lech
  Dos ze -- bi -- ke, noch shen- er
}

\addlyrics{
  Bayt zhe mir oys a finf- un- tsvan- tsi- ker
  Oyf sa- me im- per- ia- ln,
  Ich vel betn di klez- mo- rim- lech
  Zey zo- ln zich nit ay- ln

}


harmonies = \chordmode {
  cis4*3:m %r2
  fis4:m cis2:m gis4:7 gis2:7
  cis2*3:m %r2*2
  fis4*3:m %r2
  gis4*3:7 %r2
  cis4*3:m %r2

  %chorus
  cis4*3:m %r2
  a4*3 % r2
  cis4*3:m %r2
  dis4:7 gis2:7
  gis4:7 cis2:m
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
    title= "Romshe Rimtshe"
    subtitle="A finf un tsvantsiker"
    arranger = ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
