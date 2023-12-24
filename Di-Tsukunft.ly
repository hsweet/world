\version "2.18.0"
\include "english.ly"
%\pointAndClickOff
\paper{
  tagline = #ff
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ \date }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key a \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  a4.b8 c b a [gs]
  a4 e2 r4
  a4.b8 c b a [gs]
  a4 e2 r4

  c'4. c8 d c b [a]
  e'4 b2 r4
  b4. e,8 c'(b) a(gs)
  a2. r4|
}

%################################# Lyrics #####################
\addlyrics{ \set stanza = #"1. "
              O, di velt vet ve -- rn ying -- er,
              Un dos le -- bn laykh -- ter, gring -- er,
              Ye -- der klog -- er vet a zing -- er
              Ve -- rn, brid -- er, bald!
  }
\addlyrics { \set stanza = #"2. "
             Loz dos folk nor ve -- rn klig -- er,
             Un far -- yog  -- on dem ba -- trig -- er,
             Im, dem fuks, un oykh dem tig -- er
             Fun zayn shay -- nen veld.
}
\addlyrics {
  \set stanza = #"3. "
            O, di velt vet ve -- rn fray -- er,
            fray -- er, shen -- er, ying -- er, nay -- er,
            Un in ir di var -- hayt tay -- er,
            Tay -- er vi a fraynd.
}

\addlyrics {
  \set stanza = #"4. "
            O, di velt vet ve -- rn shen -- er,
            Li -- be gres -- er, si -- ne klen -- er,
            Tsvi -- shn froy -- en, tsvi -- shn men -- er,
            Tsvis -- hn land un land.
}
%################################# Chords #######################
harmonies = \chordmode {
  a2:m e2
  a2*3:m f4 e4:7
  a2*3:m d2:m
  e2*4
  a2:m
}

\score {
  \transpose a e
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Di Tsukunft"
    subtitle="The Future"
    composer= ""
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
      \line {
        "1."
        \column {
          \vspace # 3
          "-"

        }
      }
      \hspace #0.2 % vertical distance between verses
      \line { %"2."
              \column {\vspace #.3
        "Oh the world will glow with beauty"
        "Love enhanced and hatred puny"
        "Between every state and country"
        "People tearing down walls"
              }
      }
    }
    \hspace #0.2  % horiz. distance between columns
    \column {
      \line { %"3."
              \column {\vspace #3
         "And the world will become freer"
          "Freer, newer, younger, dearer"
          "And the truth within her clearer"
          "Ringing clear as a bell"
              }
      }
      \hspace #0.2 % distance between verses
      \line { %"4."
              \column {\vspace #.3
          "As you struggle become braver"
          "Activist and liberator"
          "Be a hero and creator "
          "Re-imagining our world"
        }
      }
    }
    \hspace #0.1 % distance to right margin
  }
}

%
% \markup {\hspace #20 "terer"}
% \markup {\fontCaps \bold "dog"}

%{
Yiddish lyrics
O, di velt vet vern yinger,
Un dos lebn laykhter, gringer,
Yeder kloger vet a zinger
Vern, brider, bald!
Loz dos folk nor vern kliger,
Un faryogn dem batriger,
Im, dem fuks, un oykh dem tiger
Fun zayn sheynem vald.

O, di velt vet vern shener,
Libe greser, sine klener,
Tsvishn froyen, tsvishn mener,
Tsvishn land un land.
O, di velt vet vern frayer,
Frayer, shener, yinger, nayer,
Un in ir di varhayt tayer,
Tayer vi a fraynd.

O, di velt vet vern dreyster
Un es vet nit zayn a mayster,
Nit di kroyn un nit di tayster,
Nit dem zelners shverd.
Alzo mutik in di reyen,
In di reyen, tsu bafrayen,
Tsu bafrayen un banayen
Undzer alte velt.

English translation
O, the world will become younger
And life lighter, easier,
Every complainer will
Become a singer soon, brothers!

Let the people become wiser
And chase away the traitor,
The fox, and also the tiger
From their beautiful forest.

O, the world will become more beautiful.
Love will grow, hate less,
Between women and men,
Between nation and nation.

O, the world will become freer.
Freer, more beautiful, younger, newer,
And truth will be precious,
Valued as a friend.

O, the world will become bolder
And there will be no master,
No crown and no purse,
No soldier’s sword.

So have courage in the ranks,
In the ranks, to liberate
To liberate and renew
Our old world.

"O, the world will become younger"
"And life lighter, easier,"
"Every complainer will"
"Become a singer soon, brothers!"
"
"Let the people become wiser"
"And chase away the traitor,"
"The fox, and also the tiger"
"From their beautiful forest."
"
"O, the world will become more beautiful."
"Love will grow, hate less,"a
"Between women and men,"
"Between nation and nation."
"
"O, the world will become freer."
"Freer, more beautiful, younger, newer,"
"And truth will be precious,"
"Valued as a friend."
"
"O, the world will become bolder"
"And there will be no master,"
"No crown and no purse,"
"No soldier’s sword."

"So have courage in the ranks,"
"In the ranks, to liberate"
"To liberate and renew"
"Our old world."
"
"----------"
"Oh the world will glow with beauty"
"Love enhanced and hatred puny"
"Between every state and country"
"People tearing down walls"
"
"And the world will become freer"
"Freer, newer, younger, dearer"
"And the truth within her clearer"
"Ringing clear as a bell"
"
"
"As you struggle become braver"
"Activist and liberator"
"Be a hero and creator "
"Re-imagining our world"
%}