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
  \key a \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  e8 e f f
  e4 d
  e8 e g f
  e4 d
  \repeat volta 2{
    %\mark \default
    e8 e f f
    gs8 gs16 e a4
    \tuplet 3/2 {gs8 (a) gs} \tuplet 3/2{f8(gs) f}
  }
  \alternative { {e4 d }{e4 e } }
  \break
  \repeat volta 2{
    r8 a4 b8
    a8. gs16 \tuplet 3/2{f8 e f}|
    \tuplet 3/2 {gs8(a)gs} \tuplet 3/2{f(gs)f}
  }
  \alternative{
    {e4 d}{e2}
  }
  \repeat volta 2{
    \tuplet 3/2{d8 (cs) d} \tuplet 3/2{e(d)e}|
    \tuplet 3/2 {f(e)f} a4
    \tuplet 3/2{gs8(a)gs} \tuplet 3/2 {f(gs)f}
  }
  \alternative { {e4 d }{e2 } }

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
  a4:m
  d4:m
  a4:m
  d4:m
  a4:m
  g4:m
  a4:m
  d4:m
  a4:m
  d4:m
  e4
  a4:m
  e4
  d4:m
  e4
  d4:m
  e2
  %b
  s8
  a8*5:m
  d4:m
  e4
  d4:m
  e4
  d4:m
  %c
  d4:m
  e4
  d4:m
  e4
  d4:m
  a:m
  d2:m
  e4 d4:m
  e2

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "S'iz Nito Keyn Nekhtn"
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
