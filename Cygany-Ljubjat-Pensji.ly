\version "2.18.0"
\include "english.ly"
%#(ly:expect-warning "cannot end volta")
%showLastLength = R1*8

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
  \key g \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat unfold 4 {e'4 ds e b}
  \break


  %\repeat volta 2{
  %  \mark \default
  r8 g g [g] g4 a|
  g2 fs
  r8 fs8 fs[fs] fs4 g|
  fs2 e

  r8 g g [g] g4 a|
  g2 fs
  r8 a a [a] a4 b
  a2 g
  \break
  \repeat volta 2{
    r8 b b[b] b4 c
    b2 a
    r8 a a [a] a4 b
    a2 g

    % O mama
    r8 g g[g] g4 a
    g2 fs
    r8 fs8 fs[fs] a4 g

  }
  \alternative{

  {fs2 e}
  {
  <<
      {\voiceOne e'4 ds e b}
      \new Voice

      {\voiceTwo fs2  e}
    >>

  }
  }



}
%################################# Lyrics #####################
\addlyrics{

  \repeat unfold 16 \skip 2
  \set stanza = #"1. "
  Ci -- ga -- ni lju -- bit’ pes -- nji,
  a pes -- nji nje pras -- ti -- je.
  Ci -- ga -- ni lju -- bit’ pes -- nji
  a pes -- nji u -- da -- vli -- je.


  \set stanza = #"Chorus "O ma -- ma,  ma -- ma, ma -- ma,
  lju -- bit ci -- ga __ na ja -- na.
  O ma -- ma,  ma -- ma, ma -- ma,
  lju -- bit ci -- ga -- na ja --  na.
  ja  -  na

}
\addlyrics {
  \repeat unfold 16 \skip 2
  \set stanza = #"2. "
  Ci -- ga --ni lju -- bit’ kon -- ji,
  a kon -- ji nje pras -- ti -- je.
  Ci -- ga --ni lju -- bit’ kon -- ji,
  a kon -- ji va -- ra -- ni -- je.
}
\addlyrics {
  \repeat unfold 16 \skip 2
  \set stanza = #"3. "
  Ci -- ga -- ni lju -- bit’ vi --na,
  a vi -- na nje pras -- ti -- je.
  Ci -- ga -- ni lju -- bit’ vi -- na,
  gru -- zin -- ska raz -- _ li -- va.
}
%################################# Chords #######################
harmonies = \chordmode {
  s1*4
  e1:m

  b1*2:7  % looks like H in original
  e1*2:m
  d1
  d1:7
  g1
  %\parenthesize  e1:7
  %chorus
  e1:7  %g1
  a1:m
  d1:7
  g1
  c1
  b1*2:7
  e1:m
  %coda
  \once \set chordChanges = ##f

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \transpose g c \harmonies
    }
    \new Staff  \transpose g c' \melody
  >>
  \header{
    title= "Cygany Ljubjat Pensji"
    subtitle=""
    composer= ""
    instrument = "Violin"
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
      \line { "4."
              \column {
                "Ciganji ljubit’ koljca,"
                "a koljca nje prastije."
                "Cigani ljubit’ sergi,"
                "a sergi zalatije."
              }
      }
      \hspace #0.2 % vertical distance between verses
      \line { ""
              \column {

              }
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line { "5."
              \column {
                "Cigani ljubit’ pesnji,"
                "a pesnji nje prastije."
                "Cigani ljubit pesnji,"
                "a pesnji udavlije."
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

Cigani ljubit’ pesnji,
a pesnji nje prastije.
Cigani ljubit pesnji,
a pesnji udavlije.

chorus:
O mama, mama, mama,
ljubit cigana jana.
O mama, mama, mama,
ljubit cigana jana.

chorus

Cigani ljubit’ sumi,
a sumi nje prastije.
Cigani ljubit’ sumi
a sumi daragije.

chorus

Cigani ljubit’ konji,
a konji nje prastije.
Cigani ljubit konji,
a konji varanije.

chorus

Cigani ljubit’ vina,
a vina nje prastije.
Cigani ljubit vina,
gruzinska razliva.

chorus
*****************
Ciganji ljubit’ koljca,
a koljca nje prastije.
Cigani ljubit’ sergi,
a sergi zalatije.

chorus

Cigani ljubit’ pesnji,
a pesnji nje prastije.
Cigani ljubit pesnji,
a pesnji udavlije.

chorus:

Translation:

Gypsies love poems,
songs, special, unusual,
gypsies love songs, songs about heroes.

Oh mama, mama, mama,
I love the gypsy Jana … 2x

Gypsies prefer fur coats,
special fur coats,
gypsies prefer fur coats,
expensive fur coats.

Oh mama, mama, mama,
I love the gypsy Jana … 2x

Gypsies love horses, race horses,
gypsies love horses, race horses.

Oh mama, mama, mama,
I love the gypsy Jana … 2x

Gypsies prefer wine, good wine,
gypsies love wine and refill St. George.

Oh mama, mama, mama,
I love the gypsy Jana … 2x

Gypsies prefer rings and special jewelry,
gypsies love earrings, gold earrings.

Oh mama, mama, mama,
I love the gypsy Jana … 2x

%}