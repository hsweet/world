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
  \key fs \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   cs16 cs fs es cs a' gs fs
   a16 b gs a fs8 fs16 cs
   fs16 fs b as fs d' cs b
   d16 e cs d b8 b16 fs

   b16 b d cs b d cs b
   a16 a cs b a cs b a
   gs16 b a gs fs a gs fs
    es16 d cs b a gs fs es

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

   a'8. a16 a8 a
   b8 a a(gs)
   fs2~
   fs2

   gs8 a b a
   a8 gs fs4
   es2~
   es2

   \repeat volta 2{

   %\bar"||"
   fs8. fs16 fs8 fs
   gs8 fs fs (es)
   d2~
   d2
   es8 fs gs fs
   fs8 es d4

  }
   \alternative {
     {  cs2~
   cs2}
     {\time 4/4

      cs8. cs16 cs8 cs b b cs4 }
   }

   \break
   \repeat volta 2{
   \mark \default
   cs8 cs4 cs8 cs4 d
   es4.( fs8 es d cs4)
   es8 es4 es8 es4 fs4
   gs1

   a8 a4 a8 a4 a
   r8 b4 a8 a(gs) fs4|
   r8 gs4 fs8 es4 d
   }

   \alternative{
   {cs1}
   {\time 2/4 cs2~
   cs2}
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
  fs2*2:m
  b2*3:m
  fs2:m
  cs4:7 gs4:7
  cs2:7
  %e4:7 b4:7
  %e2:7
  %B
  fs2:m
  cs2:7
  fs2*4:m
  cs2*2:7
  %dbl bar
  ds2*2:m
  b2*4:m
  cs2*2
  %time change
  cs2:7 b4:m cs4
  %c
  cs1*3
  cs1:7
  d1
  b1:m %a2:m
  d2 b2:m
  cs1:7
  cs2*2



}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \transpose fs' b \harmonies
    }
    \new Staff   \transpose fs' b' \melody
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