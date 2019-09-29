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
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    g2 g4
    g2 g4
    g4 f ef
    d2.

    f2 f4
    f2 f4
    f4 ef d
    c2.

    c4 ef g
    c2 c4
    ef4 d c
    g2 g4
    bf4 af f
    d2 d4
    f4 ef d
    c2 c4
  }


  \repeat volta 2{
    \mark \default

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
  }


}
%################################# Lyrics #####################
\addlyrics{ \set stanza = #"1. "

            Sh -- teyt a bok -- her, un er trakht.
            Trakht un trakht a gant -- se _  nakht.
            Ve -- men tzu ne -- men un nit fars -- he -- men.
            Ve -- men tzu ne -- men un nit fars -- he -- men.
            Tum -- ba -- la, Tum -- ba -- la, Tum -- ba -- la -- lai -- ka
            Tum -- ba -- la, Tum -- ba -- la, Tum -- ba -- la -- lai -- ka
            Tum -- ba -- la -- lai -- ka, shpil ba -- la -- lai -- ka
            Shpil ba -- la -- lai -- ka  frey -- lekh zol zayn
            (au: sh -- pil ba -- la -- lay -- ke, frey -- lekh zol zayn!)

}

\addlyrics { \set stanza = #"2. "
             Mey -- dl, mey -- dl, kh'vil bay dir fregn,
             Vos ken vak -- sn, vak -- sn on regn?
             Vos _ ken bre -- nen un nit oyf -- he -- rn?
             Vos  _ ken ben -- ken, vey -- nen on tre -- rn?
}

\addlyrics { \set stanza = #"3. "
             Naris -- her bok -- her, vos darf -- stu fregn?
             A shteyn ken vaksn, vak -- sn on regn.
             Li -- be ken bre -- nen un nit oyf -- he -- rn.
             A harts ken ben -- ken, vey -- nen on tre -- rn.
}
\addlyrics { \set stanza = #"4. "
             A koymen iz hekher f --  un  a hoyz.
             A kats iz flin -- ker fun a moyz.
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
                "Tumbala, Tumbala, Tumbalalaika"
                "Tumbalalaika, strum balalaika"
                "Tumbalalaika, may we be happy"
              }
      }
    }
    \hspace #0.1 % distance to right margin
  }
}




%{
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