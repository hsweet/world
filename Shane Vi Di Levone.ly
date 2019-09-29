\version "2.18.0"
%moved \header into \score for includes to work

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}

date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \transpose g a\relative c''{
  \clef treble

  \key g \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  \partial 16*2 g16 g  %lead in notes

  \repeat volta 2{
  \mark \default

    % earlier stuff
    g8  bes a g
    c8  bes4 a8
    g8  bes a g
    c8  bes4 a8

    c8 c c c
    c4 c
  }

  \alternative {
    {
      bes16 a g8 c g
      bes4. a8
    }
    {
      bes16 a g8 a bes
      g4. r8
    }
  }
  \break
  %C
  c8. |
  c8. g16  ees' d c8 %\tuplet 3/2 {ees' d c}
  r8 ees8 d c
  g ees' d c  %first note could be a c
  %f
  bes8. f16 d' c bes8
  bes8. f16 d' c bes8

  f'8 f r g
  d8 c bes a

  %refrain repeat
  g8  bes a g
  c8  bes4 a8
  g8  bes a g
  c8  bes4 a8

  c8 c c c
  c4 c
  bes16 a g8 a bes
  g4. r8|



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
  Main glick hob ich ge -- vu  -- nen
  ven ich hob dich ge -- fun -- en
  du shaist vi toi -- zent zun -- en
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1
  host mayn harts ba -- glikt

}
%################################# Chords #######################
harmonies = \transpose g a \chordmode {
  s8
  g2:m
  c8:m
  g8*7:m
  %r8*5
  c8:m
  g8*3:m
  %r8
  c2*2:m
  %r2
  g4:m
  c4:m
  g2:m
  c4:m
  d4:7
  g2:m
  %B part
  c2*3:m
  %r2*2
  f2:7
  bes2*2
  %r2
  f2:7
  d2:7
  g2:m
  c8:m
  g8*7:m
  %r2
  c8:m
  g8*3:m
  c2*2:m
  %r2
  g4:m
  c4:m
  g2:m

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
    title= "Sheyn Vi Di Levone"
    arranger = ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
