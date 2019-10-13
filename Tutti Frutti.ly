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
  \key a\minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    af4  af8 (g) f4 f
    g4 g8 (f) e2|
    f4 f8 (e) df 4 df|
    e4 e8 (df) c2|

  }
  %\alternative { { }{ } }
  \break
  \repeat volta 2{
  \mark \default
    df4 df8 (c) bf4 bf|
    df4 df8 (c) bf2
    f'4 f8 (e) df4 df
    e4 e8 (df) c2
  }
  % \alternative { { }{ } }

}
%################################# Lyrics #####################
\addlyrics{
Tut -- ti frut -- ti te ke -- las,  te ke -- las te gil -- ja -- vas.
Te ke -- las te gil -- ja -- vas, e rom -- en -- car te pag -- jas.
}

\addlyrics {
Sa-o roma da -- je te ke -- lav, sa-o roma da -- je on pije -- lav.
}
%################################# Chords #######################
harmonies = \chordmode {
  f1:m
  c1
  bf1:m
  c1
  %B
  bf1*2:m

  c1
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
