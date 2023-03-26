\version "2.18.0"
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
melody = \relative c'' {
  \clef treble
  \key g\major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes
  \repeat volta 2{
  \mark \default
   e4   e8 d e4 e8 d
        e4 e8 d c2
        g'4 g8 fs g fs g a
        e8 e e d e4 s8 e8|
   %{
   <<
      {
        e4   e8 d e4 e8 d
        e4 e8 d c2
        g'4 g8 fs g fs g a
        e8 e e d e4 s8 e8|
      }
      \\{
        c4 c8 b c4 c8 b%\segno
        c4 c8 b a2
        e'4 e8 d e d e fs
        c8 c c b c4 s8 c  %4
      }
    >>
   %}

    \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
    a16 a8.(a8) b16 a g8 s8|%raised octave for harmony
    \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
    a8 [e] e d16 c d8 e16 d c4|
    d16e8 f16 (f8) e d e c b|  %might be fs 3rd note
    a4 a a2  %8

    a'16 a r a s8 a4 b16 a g8 r|
    a8 [e] e d16 c d8 e16 d c4|
    d16e8 f16 (f8) e d e c b|  %might be fs 3rd note
    a4 a a2  %12
    \bar "||"


    e'4 ^Faster e8 d e4 e8 d  %13
    e4 e8 d c2
    g'4 g8 fs g fs g a
    e8 e e d e4 s8 e8|  %16


    \repeat volta 2{
  \mark \default
      a8 [a] a a4 b16 a g4|
      a8 [e] e d16 c d8 e16 d c4|
      d16e8 f16 (f8) e d e c b|  %might be fs 3rd note
      a4 a a2  %_  \markup {\italic {D.S.}}
      %{
      e'8 d e4 e8 d
      e4 e8 d c2   %21
      g'4 g8 fs g fs g a
      e8 e
      %}

    }
  }
  \break
  %*****************end of first tune******************

  % \alternative { { }{ } }
  %Faster
  e'4 ^\markup{ \box C } e8 d e4 e8 d|
  e4 e8 d c2~
  c2 a2
  \time 2/4 c2  %27
  \set Score.markFormatter = #format-mark-box-alphabet

  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
  %nested repeat********************************
  \repeat volta 2{
  \mark \default

    \repeat volta 2{
  \mark \default

      a'8  [a] a a4 g8 fs [e]|
      e8 fs g fs e d c16 b a8|
    }

    \alternative{
      {
        s8 c c16 b a8 c8 e4 c8|
        b8 b b a b2|
      }
      {
        s8 c c16 b c b c d e8(e)c|
        b8 b b a b2|
      }
    }

    \repeat volta 2{
  \mark \default
      a'8 [b] c c c [c] c d~|
      d b16 a b8 b16
      a b c b8(b4)|
    }
  }%end nested repeat
  %\repeat percent 2{  %repeat prev 2 measures
  c8 [c] c c c d4.|
  c2 b2
  %}
  c8 [c] c c c d4.|
  c2 b2~
  b1~
  b1

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  a1:m
  s1
  g1
  a4:m s2 e4
  f4 s4 g4
  a4:m s d4:m a4:m
  d4:m s4 e2
  a1:m
  f4 s2 g4
  c2 d4:m a4:m
  d2:m e2
  a1:m  %before double bar
  s1*2
  g1
  c2 e2 %repeat
  f4 s2 g4
  a2:m/c d4:m a4:m %c2/am   check out how to notate
  a2:m e2
  a1:m  %repeat  (watch out for the 2/4 bar)
  s2*13   %was *19
  e1  %2nd ending
  s1*2
  a8:m s8*6 d8:m
  s4 e4 s2  %short 2 bar repeat
  a4:m s8*3 d4:m s8
  s2
  e2
  %s2*4
  a4:m s8*3 d4:m
  s8*5 e2
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f

      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Fà Nyé Mama"
    subtitle="Cook, Mama"
    composer= ""
    instrument = "Violin"
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 120

    % \midi { }
  }
}
%{
% more verses:
\markup{}
\markup {
  \fill-line {
    \hspace #0.1 % distance from left margin
    \column {
      \line { "1."
        \column {
          ""
        }
      }
      \hspace #0.2 % vertical distance between verses
      \line { "2."
        \column {
         ""
        }
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line { "3."
        \column {
          ""
        }
      }
      \hspace #0.2 % distance between verses
      \line { "4."
        \column {
         ""
        }
      }
    }
    \hspace #0.1 % distance to right margin
  }
}

%}
