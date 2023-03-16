\version "2.18.0"
\include "english.ly"
\paper{
  tagline = #ff
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ \date }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key e \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    b4 e e e
    r8 d(d) e fs4 e |
    r8 b(b) e e4 e |
    r8 d(d) e fs4 e

    r8 fs(fs) d d4 d
    r8 fs8(fs)d d4 b
    c4 b2 r4
    \deadNote{c4 b2 r4}


  }
  %\break

  \repeat volta 2{
    \mark \default
    c8 c(c) c c4 c
    \deadNote{c8 c(c) c c4 c}
    c8 c(c) c c4 c
    \deadNote{c8 c(c) c c4 c}
    c4. c8 d4 c
    c4 b2 r4
    r1
    \break
  }
  \repeat volta 2{
    \mark \default
    b4. g'8(g2)~
    g2fs4 e
    d4. fs8(fs2)~
    fs2 e4 d
    c4. e8(e2)~
    e2 d4 c
    b1~
    b1
  }

}
%################################# Lyrics #####################
\addlyrics{
  Ca -- jo -- ri -- je, Su -- ka -- ri -- je,
  Ma phir ur -- de Pa -- la man -- de,
  Ma phir ur -- de
  Pa -- la man -- de, ca -- je! (ca -- je!)

  Hal -- jan, pek -- ljan man,
  (Hal -- jan, pek -- ljan man,)
  Mo vod -- zi lil -- jan,  (Mo vod -- zi lil -- jan,)
  Ir -- in, dikh man, ca -- je!

  Ah aah...
}

%################################# Chords #######################
harmonies = \chordmode {
  e1*4:m
  s8 d8*7
  d2 c2
  b1*2
  %B
  c1*5
  b1*2
  %c
  e1*2:m
  d1*2
  c1*2
  b1*2
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \transpose e a, \harmonies
    }
    \new Staff  \transpose e a, \melody
  >>
  \header{
    title= "Čaje Šukarije"
    subtitle=""
    composer= "Esma Redzepova"
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 120

    % \midi { }
  }
}

% more verses:
\markup{}
\markup {
  \fill-line {
    \hspace #0.1 % distance from left margin
    \column {
      \line { "2."
              \column {
                "Tele dikhe, vogi tare, pani ane,"
                "cajorije, sukarije,"
                "ma phir urde pala mande,"
                "ma phir urde pala mande, caje! - caje"
              }
      }
      \hspace #0.2 % vertical distance between verses
      \line { "English."
              \column {

                "Young Gypsy girl is so beautiful"
                "that she enchants a boy"
                "through her walk and beauty"
                "He begs her to stay a little,"
                "just for a moment,"
                "to turn back and look at him"
                "But she just walks by proudly"
                "Looking beautiful and does not look at him,"
                "who is burning with desire."
              }
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line { ""
              \column {
                ""
              }
      }
      \hspace #0.2 % distance between verses
      \line { ""
              \column {
                ""
              }
      }
    }
    \hspace #0.1 % distance to right margin
  }
}



%{
Tele dikhe, vogi tare, pani ane, cajorije, sukarije,
ma phir urde pala mande,
ma phir urde pala mande, caje! - caje

{sot}
Young Gypsy girl is so beautiful
that she enchants a boy
through her walk and beauty
He begs her to stay a little,
just for a moment,
to turn back and look at him
But she just walks by proudly
Looking beautiful and does not look at him,
who is burning with desire.
%}