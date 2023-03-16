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
melody = \relative c''' {
  \clef treble
  \key e\major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes
  \repeat volta 2{
  \mark \default
   cs4   cs8 b cs4 cs8 b
        cs4 cs8 b a2
        e'4 e8 ds e ds e fs
        cs8 cs cs b cs4 s8 cs8|
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
    fs16 fs8.(fs8) gs16 fs e8 s8|%raised octave for harmony
    \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
    fs8 [cs] cs b16 a b8 cs16 b a4|
    b16cs8 d16 (d8) cs b cs a gs|  %might be fs 3rd note
    fs4 fs fs2  %8

    fs'16 fs r fs s8 fs4 gs16 fs e8 r|
    fs8 [cs] cs b16 a b8 cs16 b a4|
    b16cs8 d16 (d8) cs b cs a gs|  %might be fs 3rd note
    fs4 fs fs2  %12
    \bar "||"


    cs'4 ^Faster cs8 b cs4 cs8 b  %13
    cs4 cs8 b a2
    e'4 e8 ds e ds e fs
    cs8 cs cs b cs4 s8 cs8|  %16


    \repeat volta 2{
  \mark \default
      fs8 [fs] fs fs4 gs16 fs e4|
      fs8 [cs] cs b16 a b8 cs16 b a4|
      b16cs8 d16 (d8) cs b cs a gs|  %might be fs 3rd note
      fs4 fs fs2  %_  \markup {\italic {D.S.}}
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
  cs'4 ^\markup{ \box C } cs8 b cs4 cs8 b|
  cs4 cs8 b a2~
  a2 fs2
  \time 2/4 a2  %27
  \set Score.markFormatter = #format-mark-box-alphabet

  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
  %nested repeat********************************
  \repeat volta 2{
  \mark \default

    \repeat volta 2{
  \mark \default

      fs'8  [fs] fs fs4 e8 ds [cs]|
      cs8 ds e ds cs b a16 gs fs8|
    }

    \alternative{
      {
        s8 a a16 gs fs8 a8 cs4 a8|
        gs8 gs gs fs gs2|
      }
      {
        s8 a a16 gs a gs a b cs8(cs)a|
        gs8 gs gs fs gs2|
      }
    }

    \repeat volta 2{
  \mark \default
      fs'8 [gs] a a a [a] a b~|
      b gs16 fs gs8 gs16
      fs gs a gs8(gs4)|
    }
  }%end nested repeat
  %\repeat percent 2{  %repeat prev 2 measures
  a8 [a] a a a b4.|
  a2 gs2
  %}
  a8 [a] a a a b4.|
  a2 gs2~
  gs1~
  gs1

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  fs1:m
  s1
  e1
  fs4:m s2 cs4
  d4 s4 e4
  fs4:m s b4:m fs4:m
  b4:m s4 cs2
  fs1:m
  d4 s2 e4
  a2 b4:m fs4:m
  b2:m cs2
  fs1:m  %before double bar
  s1*2
  e1
  a2 cs2 %repeat
  d4 s2 e4
  fs2:m/a b4:m fs4:m %c2/am   check out how to notate
  fs2:m cs2
  fs1:m  %repeat  (watch out for the 2/4 bar)
  s2*13   %was *19
  cs1  %2nd ending
  s1*2
  fs8:m s8*6 b8:m
  s4 cs4 s2  %short 2 bar repeat
  fs4:m s8*3 b4:m s8
  s2
  cs2
  %s2*4
  fs4:m s8*3 b4:m
  s8*5 cs2
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
