\version "2.18.0"
\include "english.ly"
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
  \key c \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################

melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

   % Introduction
   g4 g g
   g2.
   g4 (f) ef
   d2.

   f4 f f
   f2 f8 f
   f4 g af

   g4 (c,2)

   c4 ef g
   c2.
   ef4 d c
   g2 g4

   bf4 af f
   d2 d4
   f4 ef d
   c2 c4 _"==>Chorus"


 % \repeat volta 2{
    \mark Verse
    g'2 g4
    g2 g4
    g4 f ef
    d2.

    f2 f4
    f2 f4
    %f4 <<ef g>> <<d gs>>
    f4
    <<{ef4 d
      c2.}
      {g'4 gs
    g4 (c,2)}>>


    c4 ef g
    c2 c4
    ef4 d c
    g2 g4
    bf4 af f
    d2 d4
    f4 ef d
    c2 c4
 % }
 \break

  %\repeat volta 2{
   \mark Chorus

    g'4. g8 g4
    g4. g8 g4
    g4 f ef
    d2 d4

    f4. f8 f4
    f4. f8 f4
    f4 ef d
    c2 c4
    c4 ef g
    c2 c4

    ef4 d c
    g2 g4
    bf4 af f
    d2 d4
    f4 ef d
    c2.
 % }


}
%################################# Lyrics #####################
\addlyrics{
           % \repeat unfold  40{\skip 2}
            Ven ven ven, ven
            Zingt a yid
            Ven ven ven, ven er iz hin -- ger -- ikh git
            Hing -- er -- ikh git, vil er dokh es -- n,
            Zingt er a lid, er zol zikh far -- ges -- n

            \set stanza = #"1. "
            Shteyt a bok -- her, u -- n er trakht.
            Trakht un trakht a ga -- nt -- se  nakht.
            Ve -- men tzu ne -- men un nit fars -- he -- men.
            Ve -- men tzu ne -- men un nit fars -- he -- men.
            Tum -- ba -- la, Tum -- ba -- la, Tum -- ba -- la -- lai -- ka
            Tum -- ba -- la, Tum -- ba -- la, Tum -- ba -- la -- lai -- ka
            Tum -- ba -- la -- lai -- ka, shpil ba -- la -- lai -- ka
            Shpil ba -- la -- lai -- ka  frey -- lekh zol zayn
            (au: sh -- pil ba -- la -- lay -- ke, frey -- lekh zol zayn!)

}

\addlyrics {
             \repeat unfold  36{\skip 2}
             \set stanza = #"2. "
             Mey -- dl, mey -- dl, kh'vil bay dir fregn,
             Vos ken vak -- sn, vak -- sn on regn?
             Vos _ ken bre -- nen un nit oyf -- he -- rn?
             Vo -- s   ken ben -- ken, vey -- nen on tre -- rn?
}

\addlyrics {
             \repeat unfold  36{\skip 2}
             \set stanza = #"3. "
             Naris -- her bok -- her, vos darf -- stu fregn?
             Shteyn ken vak -- sn, vak -- sn on regn.
             Li -- be ken bre -- nen un nit oyf -- he -- rn.
             A harts ken ben -- ken, vey -- nen on tre -- rn.
}
\addlyrics {
             \repeat unfold  36{\skip 2}
             \set stanza = #"4. "
             Koymen iz hekh -- er fu -- n  a hoyz.
             A kats iz flink -- er fun a moyz.
             Di toy -- re iz ti -- fer fun a kval.
             Der toyt iz bi -- ter, bi -- ter -- er vi gal.

}
%################################# Chords #######################
harmonies = \chordmode {
  c4*9:m
  g4*3
  g4*9:7
  c4*12:m
  c4*3:7
  f4*3:m
  g4*3
  g4*3:7
  c4*3:m


  c4*9:m
  g4*3
  g4*9:7
  c4*12:m
  c4*3:7
  f4*3:m
  g4*3
  g4*3:7
  c4*3:m
  %chorus
  c4*9:m
  g4*3
  g4*9:7
  c4*12:m
  c4*3:7
  f4*3:m
  g4*3
  g4*3:7
  c4*3:m



}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
       \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Tumbalalaika"
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
      \line { ""
              \column {

                "A young lad stands, and he thinks"
                "Thinks and thinks the whole night through"
                "Whom to take and not to shame"
                "Whom to take and not to shame"
                " "
                "Girl, girl, I want to ask of you"
                "What can grow, grow without rain?"
                "What can burn and never end?"
                "What can yearn, cry without tears?"
                " "
                "Foolish lad, why do you have to ask?"
                "A stone can grow, grow without rain"
                "Love can burn and never end"
                "A heart can yearn, cry without tears"
              }
      }
      \hspace #0.2 % vertical distance between verses
      \line { ""
              \column {
                " "

              }
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line { ""
              \column {
                ""
                "What is higher than a house?"
                "What is swifter than a mouse?"
                "What is deeper than a well?"
                "What is bitter, more bitter than gall?"
                " "
                "A chimney is higher than a house"
                "A cat is swifter than a mouse"
                "The Torah is deeper than a well"
                "Death is bitter, more bitter than gall"
              }
      }
      \hspace #0.2 % distance between verses
      \line { "Chorus."
              \column {
                " "
                "Tumbala, Tumbala, Tumbalalaika"
                %"Tumbala, Tumbala, Tumbalalaika"
                "Tumbalalaika, play  balalaika"
                "Play balalaika, may we be happy"
              }
      }
    }
    \hspace #0.1 % distance to right margin
  }
}




%{
Ven zingt a yid,
Ven er iz hingerikh git (hungry)
Hingerikh git, vil er dokh esn,
Zingt er a lid, er zol zikh fargesn

When a jew sings, and he is hungry,
And wants to eat, he sings a song to forget his hunger.

Shteyt a bokher, un er trakht
(also shteyt un trakht)
Trakht un trakht a gantse nakht
Vemen tzu nemen un nit farshemen
Vemen tzu nemen un nit farshemen
Tumbala, Tumbala, Tumbalalaika
Tumbala, Tumbala, Tumbalalaika
Tumbalalaika, shpil balalaika
Tumbalalaika (also Shpil balalaika), freylekh zol zayn
(au: shpil balalayke, freylekh zol zayn!)

Meydl, meydl, kh'vil bay dir fregn,
Vos ken vaksn, vaksn on regn?
Vos ken brenen un nit oyfhern?
Vos ken benken, veynen on trern?


Narisher bokher, vos darfstu fregn?
A shteyn ken vaksn, vaksn on regn.
Libe ken brenen un nit oyfhern.
A harts ken benken, veynen on trern.


Vos iz hekher fun a hoyz?
Vos iz flinker fun a moyz?
Vos iz tifer fun a kval?
Vos iz biter, biterer vi gal?
 .
A koymen iz hekher fun a hoyz.
A kats iz flinker fun a moyz.
Di toyre iz tifer fun a kval.
Der toyt iz biter, biterer vi gal.
 .

A young lad stands, and he thinks
Thinks and thinks the whole night through
Whom to take and not to shame
Whom to take and not to shame
((chorus))
Tumbala, Tumbala, Tumbalalaika
Tumbala, Tumbala, Tumbalalaika
Tumbalalaika, strum balalaika
Tumbalalaika, may we be happy
Girl, girl, I want to ask of you
What can grow, grow without rain?
What can burn and never end?
What can yearn, cry without tears?
((chorus))
Foolish lad, why do you have to ask?
A stone can grow, grow without rain
Love can burn and never end
A heart can yearn, cry without tears
((chorus))
What is higher than a house?
What is swifter than a mouse?
What is deeper than a well?
What is bitter, more bitter than gall?
((chorus))
A chimney is higher than a house
A cat is swifter than a mouse
The Torah is deeper than a well
Death is bitter, more bitter than gall
((chorus))

%}