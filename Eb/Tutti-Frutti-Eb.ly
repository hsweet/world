\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

\markup{ C VAMP... }

%#################################### Melody ########################
melody = \relative c'' {
  \clef treble
  \key fs\minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
<<<<<<< HEAD
    \mark Verse
=======
  \mark \default
>>>>>>> fs846a5ec809cs3b351cs0ed8548570a4eeb69fa3a9
    f4  f8 (e) d4 d
    e4 e8 (d) cs2|
    d4 d8 (cs) bf 4 bf|
    cs4 cs8 (bf) a2|
<<<<<<< HEAD

    e'8 e f4 gs a|
    gs8 (f) e4 f e8 (d)|
    d4 d   e4 e8 (d)  |
    cs1|
=======
>>>>>>> fs846a5ec809cs3b351cs0ed8548570a4eeb69fa3a9

  }
  %\alternative { { }{ } }
  \break
  \repeat volta 2{
<<<<<<< HEAD
    \mark Chorus
    bf4-2 bf8 (a) g4 g|
=======
  \mark \default
    bf4 bf8 (a) g4 g|
>>>>>>> fs846a5ec809cs3b351cs0ed8548570a4eeb69fa3a9
    bf4 bf8 (a) g2
    d'4 d8 (cs) bf4 bf
    cs4 cs8 (bf) a2
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
>>>>>>> fs846a5ec809cs3b351cs0ed8548570a4eeb69fa3a9
%################################# Chords #######################
harmonies = \chordmode {
  d1:m
  a1
  g1:m
  a1
<<<<<<< HEAD

  d1:m
  a1
  g1:m
  a1
=======
>>>>>>> fs846a5ec809cs3b351cs0ed8548570a4eeb69fa3a9
  %B
  g1*2:m

  a1
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
    title= "Tutti Frutti"
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
