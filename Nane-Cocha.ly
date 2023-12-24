\version "2.18.0"
\include "english.ly"
%\pointAndClickOff
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
  \key c \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes


  c4.  d8 ef d ef4|
  f8 ef4(d8) ef2|
  r4 c8 c c4. c8 |
  c8(bf)bf(af) bf4(g)

  \repeat volta 2{
  \mark \default
    r4 af8 af bf4  af|
    g8[(af)g(gf)] g [f] ef4
    r4 g8 af g4 f
  }


  \alternative {
    {c4  c c' bf| }  %rests temporary due to err on original
    {c,4 b c4 r| }
  }

  c'4. _"Refr." d8 ef d ef4
  f8 g f d ef4 ef
  r8 c4 c8 c4. c8|
  c4 bf8 a bf4 c

  \repeat volta 2{
  \mark \default
    r4 af8   af bf4. af8|
    g8 af g gf g f ef4|
    r4 g8 af g4 f
  }
  \alternative {
    {c4 c c'(bf) }
    {c,4 b c r }
  }

}
%################################# Lyrics #####################
\addlyrics{
  Na -- ne s -- ok -- ha, na -- ne gad
  Mi kin -- el man -- ge o dad

  Sar me dj -- ava pal o rom \skip2 \skip2
  Mi kin -- el man -- ge o ro -- m
  ge o rom

  nah na nai....
}
%{
  Nane Sokha                          (I have no skirt)  music and lyrics Evgenij Doga


Nane sokha, nane gad
Mi kinel mange o dad

Sar me djava pal o rom
Mi kinel mange o rom


Dado mamo tsin chenya
O la chenya somnakune

Sar tu mange na tsineha
Na bashava o chhaja


Gelyom ma androda sados
Prikerdjome leskero

Pokerdjome tro shero
Kaj tu kames mro jilo

I've no sweater, no blouse,
My father can't buy them for me!
If I get married,
My husband can buy them for me!

Daddy, buy me earrings,
Earrings of gold,
If you won't buy the earrings,
I won't stay a maiden!

I went into a garden,
I picked a flower,
I fixed it to my head,
So you would want my heart.

I've no sweater, no blouse,
My father can't buy them for me!
If I get married,
My husband can buy them for me!
%}
%################################# Chords #######################
harmonies = \chordmode {
  c1
  b2
  ef2
  af1
  ef2
  e2
  %first repeated
  f2
  g2:7
  c2:7
  af2:7
  ff2
  g2:7
  c2:7
  e2:dim
  c4
  g4
  c2
  %Refrain
  c1
  bf2:7
  ef2
  af1
  ef2
  ef2:6
  %last repeated
  f2:7
  g2:7
  c2:7
  a2:7 %flat 5
  f2:6
  g2:7
  c2
  e2:dim
  c4
  g4:7
  c
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Nane Socha"
    subtitle=""
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
        "2."
        \column {
          "Dado mamo tsin chenya"
          "O la chenya somnakune"
          "Sar tu mange na tsineha"
          "Na bashava o chhaja"

        }
      }
      \hspace #0.2 % vertical distance between verses
      \line {
        "3."
        \column {
          "Gelyom ma androda sados"
          "Prikerdjome leskero"
          "Pokerdjome tro shero"
          "Kaj tu kames mro jilo"
        }
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line {
        "4."
        \column {
          "I've no sweater, no blouse,"
          "My father can't buy them for me!"
          "If I get married,"
          "My husband can buy them for me!"
          "-"
          "Daddy, buy me earrings,"
          "Earrings of gold,"
          "If you won't buy the earrings,"
          "I won't stay a maiden!"
          "-"
          "I went into a garden"
          "I picked a flower,"
          "I fixed it to my head,"
          "So you would want my heart."
        }
      }
      \hspace #0.2 % distance between verses
      \line {
        ""
        \column {
          ""
        }
      }
    }
    \hspace #0.1 % distance to right margin
  }
}
%{
c4.  d8 ef4 d
    ef4 g8 g4(ef) ef2
    r8 c c c4. c8|
    c8(bf)bf(af) bf4(g)

    \repeat volta 2{
  \mark \default
      r4 af8 af bf4  a|
      g8[(af)g(gf)] g [f] ef4
      r4 g8 af g4 f
  }


  \alternative {
    {c4  c c' bf| }  %rests temporary due to err on original
    {c,4 b c4 r| }
  }

  c'4. _"Refr." d8 ef d ef4
  f8 g f d ef4 ef
  r8 c4 c8 c4. c8|
  c4 bf8 a bf4 c

  \repeat volta 2{
  \mark \default
    r4 af8   af bf4. af8|
    g8 af g gf g f ef4|
    r4 g8 af g4 f
  }
   \alternative {
     {c4 c c'(bf) }
     {c,4 b c r }
   }

%}
