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
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  % \repeat volta 2{
  \mark \default
  fs8. gs16 a8 b
  
  a8. gs16 fs8 gs
  fs8 es4.
  gs8. a16 b8 cs
  b8. a16 gs8 a
  gs8 fs4.
  % }
  
  \break
  %\repeat volta 2{
  \mark \default
  \time 3/4
  cs'2(d4)\breathe
  b8 b b16 a gs8 (gs4)|
  d'2 (cs4)|
  cs8 b cs16b a8 (a4)|
  cs2 (d4)\breathe |
  b8 b b16 a gs8 (gs4)|
  d'2 (cs4)|
  a4 gs fs~
  fs2.
  %}
  

}
%################################# Lyrics #####################
\addlyrics{
  \set stanza = "1" 
  Dje -- lem Dje -- lem, lun -- go -- ne dro -- men -- sa
  Ma -- la -- di -- lem bakh -- ka -- re Ro -- men -- sa
  Aj  Ro -- ma   le _ _ 
  Aj cha -- va -- le _ _
  Aj  Ro -- ma   le _ _
  Aj cha -- va -- le
}
\addlyrics{
  %\repeat unfold 50 \skip1
  \set stanza = "2" 
  A Ro -- ma -- le ka -- tar tu -- men av -- en
  E tsa -- ren -- sa bahk -- ta -- le drom -- en -- sa?
}
\addlyrics{
  \set stanza = "3"
  A -- la vo -- liv la -- ke ka -- le jak -- ha,
  Kaj si gu -- gle sar duj ka -- le dra -- kha.
}
\addlyrics {
  \set stanza = "4" 
  Kin -- dem la -- ke lo -- lo dikh -- lo tur -- sko,
  Ni vo -- lil man ac -- hel la -- tar pus -- to.
}
%################################# Chords #######################
harmonies = \chordmode {
  fs2*2:m
  fs8:m cs8*3
  cs2*2
  cs8 fs8*3:m
  %b 3/4
  fs2:m b4:m
  b4:m  d4 cs4:7
  b4*2:m cs4:7
  cs4*2:7
  fs4:m 
  fs4*2:m b4:m
  b4*2:m cs4:7
  b2:m cs4:7
  fs2.*2:m
  
 
  
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Djelem Djelem"
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
      \line { "1."
              \column {
                "I travelled and travelled far and wide"
                "I met happy Gypsies"
                "I travelled and travelled far and wide"
                "I met lucky Gypsies"
              }
      }
      \hspace #0.2 % vertical distance between verses
      \line { "Ch.."
              \column {
                "Oh, Gypsies, Oh people"
                "Oh, Gypsies, Oh people"
              }
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line { "2."
              \column {
                "Oh, Gypsies, from wherever you came from"
                "With your tents along lucky roads"
                "I once had a large family too"
                "But the black legion murdered them"
              }
      }
      \hspace #0.2 % distance between verses
      \line { "3."
              \column {
                "Come with me, Gypsies of the world"
                "For the Gypsies, roads have been opened"
                "Now is the time – arise, Gypsies"
                "We will go far if we act!"
              }
      }
    }
    \hspace #0.1 % distance to right margin
  }
}


%{

Gelem Gelem lungóne droménsa,
Maladilém shukare Romensa.
Gelem Gelem lungóne droménsa,
Maladilem baxtale romenca.

Oooh, Romalé!
Oooh, chavralé!

Ala voliv lake kale jakha,
Kaj si gugle sar duj kale drakha.
Ala voliv lake kale jakha,
Kaj si gugle sar duj kale drakha.

Oooh, Romalé!
Oooh, chavralé!

Kindem lake lolo dikhlo tursko,
Ni volil man achel latar pusto.
Kindem lake lolo dikhlo tursko,
Ni volil man achel latar pusto.

Oooh, Romalé!
Oooh, chavralé!

I travelled, I travelled (Translation)

I travelled and travelled far and wide
I met happy Gypsies
I travelled and travelled far and wide
I met lucky Gypsies

Oh, Gypsies, Oh guys
Oh, Gypsies, Oh guys

Oh, Gypsies, from wherever you came from
With your tents along lucky roads
I once had a large family too
But the black legion murdered them

Come with me, Gypsies of the world
For the Gypsies, roads have been opened
Now is the time – arise, Gypsies
We will go far if we act!

Oh, Gypsies, Oh, guys
Oh, Gypsies, Oh, guys
%}