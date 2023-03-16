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
  \key d\major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes
  \repeat volta 2{
  \mark \default
   b4   b8 a b4 b8 a
        b4 b8 a g2
        d'4 d8 cs d cs d e
        b8 b b a b4 s8 b8|
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
    e16 e8.(e8) fs16 e d8 s8|%raised octave for harmony
    \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
    e8 [b] b a16 g a8 b16 a g4|
    a16b8 c16 (c8) b a b g fs|  %might be fs 3rd note
    e4 e e2  %8

    e'16 e r e s8 e4 fs16 e d8 r|
    e8 [b] b a16 g a8 b16 a g4|
    a16b8 c16 (c8) b a b g fs|  %might be fs 3rd note
    e4 e e2  %12
    \bar "||"


    b'4 ^Faster b8 a b4 b8 a  %13
    b4 b8 a g2
    d'4 d8 cs d cs d e
    b8 b b a b4 s8 b8|  %16


    \repeat volta 2{
  \mark \default
      e8 [e] e e4 fs16 e d4|
      e8 [b] b a16 g a8 b16 a g4|
      a16b8 c16 (c8) b a b g fs|  %might be fs 3rd note
      e4 e e2  %_  \markup {\italic {D.S.}}
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
  b'4 ^\markup{ \box C } b8 a b4 b8 a|
  b4 b8 a g2~
  g2 e2
  \time 2/4 g2  %27
  \set Score.markFormatter = #format-mark-box-alphabet

  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
  %nested repeat********************************
  \repeat volta 2{
  \mark \default

    \repeat volta 2{
  \mark \default

      e'8  [e] e e4 d8 cs [b]|
      b8 cs d cs b a g16 fs e8|
    }

    \alternative{
      {
        s8 g g16 fs e8 g8 b4 g8|
        fs8 fs fs e fs2|
      }
      {
        s8 g g16 fs g fs g a b8(b)g|
        fs8 fs fs e fs2|
      }
    }

    \repeat volta 2{
  \mark \default
      e'8 [fs] g g g [g] g a~|
      a fs16 e fs8 fs16
      e fs g fs8(fs4)|
    }
  }%end nested repeat
  %\repeat percent 2{  %repeat prev 2 measures
  g8 [g] g g g a4.|
  g2 fs2
  %}
  g8 [g] g g g a4.|
  g2 fs2~
  fs1~
  fs1

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  e1:m
  s1
  d1
  e4:m s2 b4
  c4 s4 d4
  e4:m s a4:m e4:m
  a4:m s4 b2
  e1:m
  c4 s2 d4
  g2 a4:m e4:m
  a2:m b2
  e1:m  %before double bar
  s1*2
  d1
  g2 b2 %repeat
  c4 s2 d4
  e2:m/g a4:m e4:m %c2/am   check out how to notate
  e2:m b2
  e1:m  %repeat  (watch out for the 2/4 bar)
  s2*13   %was *19
  b1  %2nd ending
  s1*2
  e8:m s8*6 a8:m
  s4 b4 s2  %short 2 bar repeat
  e4:m s8*3 a4:m s8
  s2
  b2
  %s2*4
  e4:m s8*3 a4:m
  s8*5 b2
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
    title= "Fà Nyé Mama"
    subtitle="Cook, Mama"
    composer= ""
    instrument =""
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
