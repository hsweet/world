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
  \key e \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \transpose b, a, \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  b8 g' fs e
  b8 g' fs e
  g4 g8 g
  g2

  fs8 g a b
  a8 g fs e
  fs8 fs fs fs
  fs2

  \repeat volta 2 {
    fs8(e) e (ds)
    ds8(c) c(b)
    c8 ds ds ds
    ds2
    fs8 e e ds
    ds8 c c b
  }
  \alternative {
    {
      ds8 b b b
      b4(b8) r
    }
    {
      b'8 b,b b
      b4 (b8)r
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
harmonies = \transpose b, a, \chordmode {
  e2*4:m
  a2*2:m
  b2*2
  %b
  a2*2:m
  b2*2
  a2*2:m
  b1*4
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
