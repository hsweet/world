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
  \key e \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c''' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat unfold 4 {cs4 bs cs gs}
  \break


  %\repeat volta 2{
  %  \mark \default
  r8 e e [e] e4 fs|
  e2 ds
  r8 ds8 ds[ds] ds4 e|
  ds2 cs

  r8 e e [e] e4 fs|
  e2 ds
  r8 fs fs [fs] fs4 gs
  fs2 e
  \break
  \repeat volta 2{
    r8 gs gs[gs] gs4 a
    gs2 fs
    r8 fs fs [fs] fs4 gs
    fs2 e

    % O mama
    r8 e e[e] e4 fs
    e2 ds
    r8 ds8 ds[ds] fs4 e

  }
  \alternative{

  {ds2 cs}
  {
  <<
      {\voiceOne cs'4 bs cs gs}
      \new Voice

      {\voiceTwo ds2  cs}
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
  cs1:m

  gs1*2:7  % looks like H in original
  cs1*2:m
  b1
  b1:7
  e1
  %\parenthesize  e1:7
  %chorus
  cs1:7  %g1
  fs1:m
  b1:7
  e1
  a1
  gs1*2:7
  cs1:m
  %coda
  \once \set chordChanges = ##f

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \transpose e' a \harmonies
    }
    \new Staff  \transpose e' a' \melody
  >>
  \header{
    title= "Cygany Ljubjat Pensji"
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