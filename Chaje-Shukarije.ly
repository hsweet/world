\version "2.18.0"
\include "english.ly"
%\pointAndClickOff
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
  \key a \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    e4 a a a
    r8 g(g) a b4 a |
    r8 e(e) a a4 a |
    r8 g(g) a b4 a
   
    r8 b(b) g g4 g
    r8 b8(b)g g4 e
    f4 e2 r4
    \deadNote{f4 e2 r4}
   

  }
  %\break

  \repeat volta 2{
    \mark \default
    f8 f(f) f f4 f
    \deadNote{f8 f(f) f f4 f}
    f8 f(f) f f4 f
    \deadNote{f8 f(f) f f4 f}
    f4. f8 g4 f
    f4 e2 r4 
    r1
    \break
  }
  \repeat volta 2{
    \mark \default
    e4. c'8(c2)~
    c2b4 a 
    g4. b8(b2)~
    b2 a4 g
    f4. a8(a2)~
    a2 g4 f
    e1~
    e1
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
  a1*4:m
  s8 g8*7
  g2 f2
  e1*2
  %B
  f1*5 
  e1*2
  %c
  a1*2:m
  g1*2
  f1*2
  e1*2
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \transpose a d \harmonies
    }
    \new Staff  \transpose a d \melody
  >>
  \header{
    title= "Čaje Šukarije"
    subtitle=""
    composer= "Esma Redzepova"
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm} 
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