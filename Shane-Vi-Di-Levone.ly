\version "2.18.0"
%moved \header into \score for includes to work
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}

date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \relative c''{
  \clef treble

  \key a \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  \partial 16*2 a16 a16 | %lead in notes

  \repeat volta 2{
  \mark \default

    % earlier stuff
    a8  c b a|
    d8  c4 b8
    a8 c b a|
    d8  c4 b8

    d8 d d d
    d4 d|
  }

  \alternative {
    {
      c16 b a8 d a
      c4. b8
    }
    {
      c16 b a8 b c
      a4. r8|
    }
  }
  \break
  %C
  d8. a16 f'16 e d8
  d8. a16 f'16 e d8
  r8 f8 e d
  a f' e d  | %first note could be a c
  %f

  c8. g16 e' d c8
  c8. g16 e' d c8

  g'8 g r a
  e8 d c b

  %refrain repeat
  a8  c b a
  d8  c4 b8
  a8  c b a
  d8  c4 b8|

  d8 d d d
  d4 d
  c16 b a8 b c
  a4. r8|



  % \alternative { { }{ } }

}
%################################# Lyrics #####################
\addlyrics{
  \skip2 \skip2
  Sheyn vi di l -- vo -- ne \skip2
  lech -- tig vi di shte -- rn
  fun hi -- ml a ma -- to -- ne
  bis -- tu mir tsu -- ge -- shikt

  %refrain
  \skip2 \skip2 \skip2 \skip2 \skip2 \skip2 \skip2
  Dai -- ne tsen -- del -- lach
  vai -- se pe -- re -- lach
  mit dai -- ne she -- ne oi -- gn
  dai -- ne chen -- del -- lach
  dai -- ne he -- re -- lach
  host dich \skip2 tsu -- ge -- tsoi -- gn

  Sheyn vi di l -- vo -- ne \skip2
  lech -- tig vi di shte -- rn
  fun hi -- ml a ma -- to -- ne
  bis -- tu mir tsu -- ge -- shikt
}

\addlyrics{
  \skip2
  Mayn glick hob ich ge -- vu  -- nen
  ven ich hob dich ge -- fun -- en
  du shaist vi toi -- zent zun -- en
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1
  host mayn harts ba -- glikt

}
%################################# Chords #######################
harmonies = \chordmode {
  s8
  a2:m
  d8:m
  a8*7:m
  %r8*5
  d8:m
  a8*3:m
  %r8
  d2*2:m
  %r2
  a4:m
  d4:m
  a2:m
  d4:m
  e4:7
  a2:m
  %B part
  d2*3:m
  %r2*2
  g2:7
  c2*2
  %r2
  g2:7
  e2:7
  a2:m
  d8:m
  a8*7:m
  %r2
  d8:m
  a8*3:m
  d2*2:m
  %r2
  a4:m
  d4:m
  a2:m

}

\score {
  \transpose a d
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Sheyn Vi Di Levone"
instrument= "Violin"
    arranger = ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
