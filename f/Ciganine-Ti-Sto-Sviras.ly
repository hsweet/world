\version "2.18.0"
\include "english.ly"
\pointAndClickOff
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
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   e16 e a gs e c' b a
   c16 d b c a8 a16 e
   a16 a d cs a f' e d
   f16 g e f d8 d16 a

   d16 d f e d f e d
   c16 c e d c e d c
   b16 d c b a c b a
    gs16 f e d c b a gs

  }

  \break
 %{
 \alternative {
    {b16e c b a c b a
    gs16 f e d c b a gs}

    {b'16 d c8 b16 a d c
    b8 e, fs gs}
  }
 %}
  %\bar"||"
  %\repeat volta 2{
   \mark \default

   c'8. c16 c8 c
   d8 c c(b)
   a2~
   a2

   b8 c d c
   c8 b a4
   gs2~
   gs2

   \repeat volta 2{

   %\bar"||"
   a8. a16 a8 a
   b8 a a (gs)
   f2~
   f2
   gs8 a b a
   a8 gs f4

  }
   \alternative {
     {  e2~
   e2}
     {\time 4/4

      e8. e16 e8 e d d e4 }
   }

   \break
   \repeat volta 2{
   \mark \default
   e8 e4 e8 e4 f
   gs4.( a8 gs f e4)
   gs8 gs4 gs8 gs4 a4
   b1

   c8 c4 c8 c4 c
   r8 d4 c8 c(b) a4|
   r8 b4 a8 gs4 f
   }

   \alternative{
   {e1}
   {\time 2/4 e2~
   e2}
   }

}
%################################# Lyrics #####################
\addlyrics{
\repeat unfold 62 {\skip 2}
\set stanza = #"1. "
Ci -- ga -- ni -- ne, ti sto svi -- ras
zas -- to mo -- ju du -- su di -- ras
da li znas za tes -- ke bo -- li
sto mi tu -- ga sr -- ca mo -- ri
%da li znas za moje bo -- li
%sad moj dragi drugu vo -- li

\repeat unfold 7 {\skip 2}
Ne -- kad sam bi -- la ja
srec -- na i vol -- je -- na
dok dru -- ga ze -- na
ni -- je mo -- ju lju -- bav u -- ze -- la
}

\addlyrics{
\repeat unfold 78 {\skip 2}
\set stanza = #"2. "
 Da li znas za mo -- je bo -- li
 sad moj dra -- gi dru -- gu vo -- _ li
}
%################################# Chords #######################
harmonies = \chordmode {
  a2*2:m
  d2*3:m
  a2:m
  e4:7 b4:7
  e2:7
  %e4:7 b4:7
  %e2:7
  %B
  a2:m
  e2:7
  a2*4:m
  e2*2:7
  %dbl bar
  fs2*2:m
  d2*4:m
  e2*2
  %time change
  e2:7 d4:m e4
  %c
  e1*3
  e1:7
  f1
  d1:m %a2:m
  f2 d2:m
  e1:7
  e2*2



}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \transpose a d \harmonies
    }
    \new Staff   \transpose a d' \melody
  >>
  \header{
    title= "Ciganine Ti Sto Sviras"
    subtitle=""
    composer= ""
    instrument = "F Horn"
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
%{
Ciganine, ti sto sviras
zasto moju dusu diras
da li znas za teske boli
sto mi tuga srca mori
da li znas za moje boli
sad moj dragi drugu voli

Ref.
Nekad sam bila ja
srecna i voljena
dok druga zena
nije moju ljubav uzela

Druga ga miluje
on za njom luduje
a moje srce usamljeno
za njim boluje

Nekada smo sretni bili
nasu ljubav nismo krili
mislila sam, dani srece
da nikada proci nece

Ref.

Ciganine, sviraj, sviraj
pesmom moju dusu diraj
nek’ mi tvoja pesma kaze
kad’ me ljubi sto me laze
%}