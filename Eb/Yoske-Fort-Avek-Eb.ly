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
melody = \transpose cs' b \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  cs8 a' gs fs
  cs8 a' gs fs
  a4 a8 a
  a2

  gs8 a b cs
  b8 a gs fs
  gs8 gs gs gs
  gs2

  \repeat volta 2 {
    gs8(fs) fs (es)
    es8(d) d(cs)
    d8 es es es
    es2
    gs8 fs fs es
    es8 d d cs
  }
  \alternative {
    {
      es8 cs cs cs
      cs4(cs8) r
    }
    {
      cs'8 cs,cs cs
      cs4 (cs8)r
    }
  }



}
%################################# Lyrics #####################
\addlyrics{

  Koyf mir nit keyn lok -- e -- nes
  Un makh mir nit sheyn
  Koyf dir a por shti -- vel -- ekh
  Tsum poy -- ezd darft tsu geyn

  Oy, oy, oy oy
  Yosh  -- ke fort a  -- vek
  Nokh a sho un nokh a sho
  Der poy -- ezd geyt a -- vek
}
\addlyrics {
  Za -- y zh -- e mir ge -- z -- unt,
  Mayn tayere ka -- le
  Noch dir vel ikh be -- n -- ken,
  - Mir vi noch  2 a -- le

  Oy, oy, oy oy
  Yosh  -- ke fort a  -- vek
  Noch a kush un noch a giet,
  Der poy -- ezd geyt a -- vek!

}





%################################# Chords #######################
harmonies = \transpose cs' b \chordmode {
  fs2*4:m
  b2*2:m
  cs2*2
  %b
  b2*2:m
  cs2*2
  b2*2:m
  cs1*4
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      #(set-paper-size "letter")
      #(set-paper-size "letter")
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Yoshke Fort Avek"
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
%\markup{}
\markup {
  \fontsize #2
  \fill-line {
    \hspace #0.1 % distance from left margin
    \column {
      \line {
        ""
        \column {
          "\n"
          "Di ban is shoyn gekumen,"
          "Un es khapt mir a shrek!"
          "Lomir zikh gezegen"
          "Der poyezd geyt avek!"

        }
      }
      \hspace #0.2 % vertical distance between verses
      \line {
        ""
        \column {
          ""
        }
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line {
        ""
        \column {
          "\n"
          "Klog zhe nisht un veyn zhe nisht,"
          "S'iz alsding blote:"
          "Ikh vel zayn bay fonen"
          "Der shenster in der rote"
        }
      }
      \hspace #0.2 % distance between verses
      \line {
        ""
        \column {
          ""
        }
      }
    }
    \hspace #0.1 % distance to right margin
  }
}
