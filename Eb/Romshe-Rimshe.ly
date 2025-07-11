\version "2.18.0"
\language "english"
\pointAndClickOff


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

  \key e \minor
  \time 3/4

  b8 e16 e e8 e e e
  fs8. a16 g4. g8
  fs8. e16 fs4 g
  fs4  e4. e8

  b8 e e4 e|
  fs8. a16 g4. g8
  fs8. e16 fs4 g
  fs4 e2|

  \repeat volta 2{
    b'8. a16 g4 g
    g8. fs16 e4 e
    b'8. a16 g4 g

  }

  \alternative {
    { fs8. e16 b'2}
    { fs8. b,16 e2}
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
  e4*3:m %r2
  a4:m e2:m b4:7 b2:7
  e2*3:m %r2*2
  a4*3:m %r2
  b4*3:7 %r2
  e4*3:m %r2

  %chorus
  e4*3:m %r2
  c4*3 % r2
  e4*3:m %r2
  fs4:7 b2:7
  b4:7 e2:m
}

\score {\transpose c a
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Romshe Rimtshe"
instrument= "Eb"
    subtitle="A finf un tsvantsiker"
    arranger = ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
