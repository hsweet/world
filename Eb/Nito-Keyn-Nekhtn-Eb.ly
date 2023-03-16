\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

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
  cs8 cs d d
  cs4 b
  cs8 cs e d
  cs4 b
  \repeat volta 2{
    %\mark \default
    cs8 cs d d
    es8 es16 cs fs4
    \tuplet 3/2 {es8 (fs) es} \tuplet 3/2{d8(es) d}
  }
  \alternative { {cs4 b }{cs4 cs } }
  \break
  \repeat volta 2{
    r8 fs4 gs8
    fs8. es16 \tuplet 3/2{d8 cs d}|
    \tuplet 3/2 {es8(fs)es} \tuplet 3/2{d(es)d}
  }
  \alternative{
    {cs4 b}{cs2}
  }
  \repeat volta 2{
    \tuplet 3/2{b8 (as) b} \tuplet 3/2{cs(b)cs}|
    \tuplet 3/2 {d(cs)d} fs4
    \tuplet 3/2{es8(fs)es} \tuplet 3/2 {d(es)d}
  }
  \alternative { {cs4 b }{cs2 } }

}
%################################# Lyrics #####################
\addlyrics{
  S'iz ni -- to keyn nekh -- tn
  S'nokh ni -- to der mor -- gn:
  S'iz noch do a bi -- se -- le haynt
  Shtert im nit mit zor -- gn
  \skip 2 \skip 2
  Tay -- ray -- ray -- ra -- ra -- ra -- ray
  ta -- ray, ta -- ray ray, ray ray
  Tay -- ray -- ray -- ra -- ra -- ra -- ray
  ta -- ray, ta -- ray ray, ray

}
\addlyrics{
  Khapt ar -- ayn a shnep -- sl
  Kolz -- man ir-zent baym le -- bn:
  Im -- irtse ha -- shem oyf ye -- ner velt
  Vet men aykh nisht ge -- bn
}
%################################# Chords #######################
harmonies = \chordmode {
  fs4:m
  b4:m
  fs4:m
  b4:m
  fs4:m
  e4:m
  fs4:m
  b4:m
  fs4:m
  b4:m
  cs4
  fs4:m
  cs4
  b4:m
  cs4
  b4:m
  cs2
  %b
  s8
  fs8*5:m
  b4:m
  cs4
  b4:m
  cs4
  b4:m
  %c
  b4:m
  cs4
  b4:m
  cs4
  b4:m
  fs:m
  b2:m
  cs4 b4:m
  cs2

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "S'iz Nito Keyn Nekhtn"
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
                "Yesterday is dead and gone"
                "There is no tomorrow"
                "Only a bit of the night remains,"
                "And the bygone is bygone"
              }
      }
      \hspace #0.2 % vertical distance between verses
      \line { "2."
              \column {
                "Take a shot of whiskey"
                "Let's forget our sorrows"
                "There a'int no liquor in the afterlife"
                "We're here today and gone tomorrow"

              }
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line { "3."
              \column {
                "Yesterday is dead and gone"
                "Tomorrow we may be too"
                "Only a bit of our life remains"
                "To do what we got to do"
              }
      }
      \hspace #0.2 % distance between verses
      \line { "4."
              \column {
                "What a sober man has on his mind"
                "Is by a drunkard often sung"
                "And if you're drinking with A Texian"
                "He might just pull his gun."
              }
      }
    }
    \hspace #0.1 % distance to right margin
  }
}

%}

%{
Yesterday is buried, mourn it on the morrow
Here is but ephemeral bliss, ruin it not with sorrow
So Grab yourself a bottle, while you still can swallow
You won’t cop a single drop in the world to follow
You won’t cop a single drop in the world to follow

Brothers wail and howl, let your beard be wild
That’s the way to dance away sorrow and exile
That’s the way to dance away sorrow and exile

Hulyet hulyet brider, varft mit bord un poles
Ot azoy, ot azoy tantst a yid in goles
Ot azoy, ot azoy tantst a yid in goles

%}
