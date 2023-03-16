\version "2.18.0"
\language "english"


\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }
%\markup{ Got something to say? }

melody = \relative c {
  \clef treble

  \key b \minor
  \time 3/4

  fs8 b16 b b8 b b b
  cs8. e16 d4. d8
  cs8. b16 cs4 d
  cs4  b4. b8

  fs8 b b4 b|
  cs8. e16 d4. d8
  cs8. b16 cs4 d
  cs4 b2|

  \repeat volta 2{
    fs'8. e16 d4 d
    d8. cs16 b4 b
    fs'8. e16 d4 d

  }

  \alternative {
    { cs8. b16 fs'2}
    { cs8. fs,16 b2}
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
  b4*3:m %r2
  e4:m b2:m fs4:7 fs2:7
  b2*3:m %r2*2
  e4*3:m %r2
  fs4*3:7 %r2
  b4*3:m %r2

  %chorus
  b4*3:m %r2
  g4*3 % r2
  b4*3:m %r2
  cs4:7 fs2:7
  fs4:7 b2:m
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
