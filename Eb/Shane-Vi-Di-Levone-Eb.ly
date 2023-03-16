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

  \key fs \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  \partial 16*2 fs16 fs16 | %lead in notes

  \repeat volta 2{
  \mark \default

    % earlier stuff
    fs8  a gs fs|
    b8  a4 gs8
    fs8 a gs fs|
    b8  a4 gs8

    b8 b b b
    b4 b|
  }

  \alternative {
    {
      a16 gs fs8 b fs
      a4. gs8
    }
    {
      a16 gs fs8 gs a
      fs4. r8|
    }
  }
  \break
  %C
  b8. fs16 d'16 cs b8
  b8. fs16 d'16 cs b8
  r8 d8 cs b
  fs d' cs b  | %first note could be a c
  %f

  a8. e16 cs' b a8
  a8. e16 cs' b a8

  e'8 e r fs
  cs8 b a gs

  %refrain repeat
  fs8  a gs fs
  b8  a4 gs8
  fs8  a gs fs
  b8  a4 gs8|

  b8 b b b
  b4 b
  a16 gs fs8 gs a
  fs4. r8|



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
  fs2:m
  b8:m
  fs8*7:m
  %r8*5
  b8:m
  fs8*3:m
  %r8
  b2*2:m
  %r2
  fs4:m
  b4:m
  fs2:m
  b4:m
  cs4:7
  fs2:m
  %B part
  b2*3:m
  %r2*2
  e2:7
  a2*2
  %r2
  e2:7
  cs2:7
  fs2:m
  b8:m
  fs8*7:m
  %r2
  b8:m
  fs8*3:m
  b2*2:m
  %r2
  fs4:m
  b4:m
  fs2:m

}

\score {
  \transpose fs' b
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
