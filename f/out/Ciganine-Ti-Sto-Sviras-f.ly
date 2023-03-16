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
  \key e \minor
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
   b16 b e ds b g' fs e
   g16 a fs g e8 e16 b
   e16 e a gs e c' b a
   c16 d b c a8 a16 e

   a16 a c b a c b a
   g16 g b a g b a g
   fs16 a g fs e g fs e
    ds16 c b a g fs e ds

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

   g'8. g16 g8 g
   a8 g g(fs)
   e2~
   e2

   fs8 g a g
   g8 fs e4
   ds2~
   ds2

   \repeat volta 2{

   %\bar"||"
   e8. e16 e8 e
   fs8 e e (ds)
   c2~
   c2
   ds8 e fs e
   e8 ds c4

  }
   \alternative {
     {  b2~
   b2}
     {\time 4/4

      b8. b16 b8 b a a b4 }
   }

   \break
   \repeat volta 2{
   \mark \default
   b8 b4 b8 b4 c
   ds4.( e8 ds c b4)
   ds8 ds4 ds8 ds4 e4
   fs1

   g8 g4 g8 g4 g
   r8 a4 g8 g(fs) e4|
   r8 fs4 e8 ds4 c
   }

   \alternative{
   {b1}
   {\time 2/4 b2~
   b2}
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
  e2*2:m
  a2*3:m
  e2:m
  b4:7 fs4:7
  b2:7
  %e4:7 b4:7
  %e2:7
  %B
  e2:m
  b2:7
  e2*4:m
  b2*2:7
  %dbl bar
  cs2*2:m
  a2*4:m
  b2*2
  %time change
  b2:7 a4:m b4
  %c
  b1*3
  b1:7
  c1
  a1:m %a2:m
  c2 a2:m
  b1:7
  b2*2



}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \transpose e a, \harmonies
    }
    \new Staff   \transpose e a \melody
  >>
  \header{
    title= "Ciganine Ti Sto Sviras"
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