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
  \key fs \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    cs4 fs fs fs
    r8 e(e) fs gs4 fs |
    r8 cs(cs) fs fs4 fs |
    r8 e(e) fs gs4 fs
   
    r8 gs(gs) e e4 e
    r8 gs8(gs)e e4 cs
    d4 cs2 r4
    \deadNote{d4 cs2 r4}
   

  }
  %\break

  \repeat volta 2{
    \mark \default
    d8 d(d) d d4 d
    \deadNote{d8 d(d) d d4 d}
    d8 d(d) d d4 d
    \deadNote{d8 d(d) d d4 d}
    d4. d8 e4 d
    d4 cs2 r4 
    r1
    \break
  }
  \repeat volta 2{
    \mark \default
    cs4. a'8(a2)~
    a2gs4 fs 
    e4. gs8(gs2)~
    gs2 fs4 e
    d4. fs8(fs2)~
    fs2 e4 d
    cs1~
    cs1
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
  fs1*4:m
  s8 e8*7
  e2 d2
  cs1*2
  %B
  d1*5 
  cs1*2
  %c
  fs1*2:m
  e1*2
  d1*2
  cs1*2
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \transpose fs' b \harmonies
    }
    \new Staff  \transpose fs' b \melody
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