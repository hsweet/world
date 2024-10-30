\version "2.18.0"
\include "english.ly"
\pointAndClickOff
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

\markup{ C VAMP... }

%#################################### Melody ########################
melody = \relative c' {
  \clef treble
  \key a\minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
<<<<<<< HEAD
    \mark Verse
=======
  \mark \default
>>>>>>> a846c5ec809e3d351e0ed8548570c4eeb69fa3c9
    af4  af8 (g) f4 f
    g4 g8 (f) e2|
    f4 f8 (e) df 4 df|
    e4 e8 (df) c2|
<<<<<<< HEAD

    g'8 g af4 b c|
    b8 (af) g4 af g8 (f)|
    f4 f   g4 g8 (f)  |
    e1|
=======
>>>>>>> a846c5ec809e3d351e0ed8548570c4eeb69fa3c9

  }
  %\alternative { { }{ } }
  \break
  \repeat volta 2{
<<<<<<< HEAD
    \mark Chorus
    df4-2 df8 (c) bf4 bf|
=======
  \mark \default
    df4 df8 (c) bf4 bf|
>>>>>>> a846c5ec809e3d351e0ed8548570c4eeb69fa3c9
    df4 df8 (c) bf2
    f'4 f8 (e) df4 df
    e4 e8 (df) c2
  }
  % \alternative { { }{ } }

}
%################################# Lyrics #####################
\addlyrics{
<<<<<<< HEAD
  Tut -- ti frut -- ti te ke -- las,  te ke -- las te gil -- ja -- vas.
  Te ke -- las te gil -- ja -- vas, e rom -- en -- car te pag -- jas.
  %So danav (chi zhalau?) so te kerav, pala late me merav.
  Chi zha -- lau  so te ke -- rav, pa -- la la -- te me me -- rav.
}

\addlyrics {
  Sa-o roma da -- je te ke -- lav, sa-o roma da -- je on pije -- lav.
  Sa-o roma da -- je te ke -- lav, sa-o roma da -- je on pije -- lav.
}

\addlyrics {
  Mi -- ri rrom -- ni si shu -- kar da se lo lon -- gi dai bar
  %Miri rromni si bruneto da shi mai bari talento
}
\addlyrics {
  Ka -- ko u -- vil to pa-ma -- to, a man mar -- ga kor -- ko -- ro.
  A gar -- av -- la kaj ge -- li, ti -- la -- ta -- ri za vo -- gi.
}

=======
Tut -- ti frut -- ti te ke -- las,  te ke -- las te gil -- ja -- vas.
Te ke -- las te gil -- ja -- vas, e rom -- en -- car te pag -- jas.
}

\addlyrics {
Sa-o roma da -- je te ke -- lav, sa-o roma da -- je on pije -- lav.
}
>>>>>>> a846c5ec809e3d351e0ed8548570c4eeb69fa3c9
%################################# Chords #######################
harmonies = \chordmode {
  f1:m
  c1
  bf1:m
  c1
<<<<<<< HEAD

  f1:m
  c1
  bf1:m
  c1
=======
>>>>>>> a846c5ec809e3d351e0ed8548570c4eeb69fa3c9
  %B
  bf1*2:m

  c1
}

\score {\transpose c a
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Tutti Frutti"
    subtitle=""
    composer= ""
    instrument = "Eb"
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
                "With tutti frutti soft drink we're dancing and singing"
                "and living it up we'll smash the bottles."
              }
      }
      \hspace #0.2 % vertical distance between verses
      \line { "2."
              \column {
                "Chorus: I don't know, what can I do? I'll die anyway."
              }
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line { "3."
              \column {
                "All the Roma, mother, are dancing,"
                "All the Roma, mother, are drinking (?)"

              }
      }
      \hspace #0.2 % distance between verses
      \line { "4."
              \column {
                "Uncle Uvil is lid drunk."
                "His wife Marga is afraid because"
                "she thinks he'll go off with someone else."
              }
      }
    }
    \hspace #0.1 % distance to right margin
  }
}

%{
 Tutti frutti te kelas, te kelas te giljavas.
Te kelas te giljavas, e romencar te pagjas.
So danav (chi zhalau?) so te kerav, pala late me merav.

Sa o roma daje te kelav, sa o roma daje on pijelav
So danav (chi zhalau?) so te kerav, pala late me merav.

Kako uvil to pamato, a man marga korkoro.
A garavla kaj geli, tilatari za vogi.
So danav (chi zhalau?) so te kerav, pala late me merav.

Moi, j'ai eu ça d'Erika Serre qui le chante dans le spectacle Vertigo de Tony Gatlif
TUTTI FRUTTI TE KELAS
TE KELAS TE GUILIA BAS
TE KELAS, TE GUILIA BAS
MERA MERSA TE MANGAS

TSHIIDJA SO SE TE KERAO
PALLALATE MEMERAO

SAO ROMA DAJE
KERAO
SAO ROMA DAJE
ON PIELAO
TSHIIDJA SO SE TE KERAO
PALLALATE MEMERAO

MIRI ROMNI SI BRUNETTO
AI SILA
BARO TALEITO
MIRI ROMNI SI CHUKAR
SRI LULU GIA DAIBAL

With tutti frutti soft drink we're dancing and singing and living
 it up we'll smash the bottles.

 Chorus: I don't know, what can i do? I'll die anyway.
All the Roma, mother, are dancing, all the Roma, mother, are drinking (?)
Uncle Uvil is "lid drunk".
His wife Marga is afraid because she thinks he'll go off with someone else.
%}
%{
 Tutti frutti te kelas, te kelas te giljavas.
Te kelas te giljavas, e romencar te pagjas.
So danav (chi zhalau?) so te kerav, pala late me merav.

Sa o roma daje te kelav, sa o roma daje on pijelav
So danav (chi zhalau?) so te kerav, pala late me merav.

Kako uvil to pamato, a man marga korkoro.
A garavla kaj geli, tilatari za vogi.
So danav (chi zhalau?) so te kerav, pala late me merav.

Moi, j'ai eu ça d'Erika Serre qui le chante dans le spectacle Vertigo de Tony Gatlif
TUTTI FRUTTI TE KELAS
TE KELAS TE GUILIA BAS
TE KELAS, TE GUILIA BAS
MERA MERSA TE MANGAS

TSHIIDJA SO SE TE KERAO
PALLALATE MEMERAO

SAO ROMA DAJE
KERAO
SAO ROMA DAJE
ON PIELAO
TSHIIDJA SO SE TE KERAO
PALLALATE MEMERAO

MIRI ROMNI SI BRUNETTO
AI SILA
BARO TALEITO
MIRI ROMNI SI CHUKAR
SRI LULU GIA DAIBAL

With tutti frutti soft drink we're dancing and singing and living it up we'll smash the bottles.

 Chorus: I don't know, what can i do? I'll die anyway.
All the Roma, mother, are dancing, all the Roma, mother, are drinking (?)
Uncle Uvil is "lid drunk".
His wife Marga is afraid because she thinks he'll go off with someone else.
%}
