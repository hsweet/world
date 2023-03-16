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
melody = \relative c'{
  \clef treble

  \key e \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  \partial 16*2 e16 e16 | %lead in notes

  \repeat volta 2{
  \mark \default

    % earlier stuff
    e8  g fs e|
    a8  g4 fs8
    e8 g fs e|
    a8  g4 fs8

    a8 a a a
    a4 a|
  }

  \alternative {
    {
      g16 fs e8 a e
      g4. fs8
    }
    {
      g16 fs e8 fs g
      e4. r8|
    }
  }
  \break
  %C
  a8. e16 c'16 b a8
  a8. e16 c'16 b a8
  r8 c8 b a
  e c' b a  | %first note could be a c
  %f

  g8. d16 b' a g8
  g8. d16 b' a g8

  d'8 d r e
  b8 a g fs

  %refrain repeat
  e8  g fs e
  a8  g4 fs8
  e8  g fs e
  a8  g4 fs8|

  a8 a a a
  a4 a
  g16 fs e8 fs g
  e4. r8|



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
  e2:m
  a8:m
  e8*7:m
  %r8*5
  a8:m
  e8*3:m
  %r8
  a2*2:m
  %r2
  e4:m
  a4:m
  e2:m
  a4:m
  b4:7
  e2:m
  %B part
  a2*3:m
  %r2*2
  d2:7
  g2*2
  %r2
  d2:7
  b2:7
  e2:m
  a8:m
  e8*7:m
  %r2
  a8:m
  e8*3:m
  a2*2:m
  %r2
  e4:m
  a4:m
  e2:m

}

\score {
  \transpose e a,
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
