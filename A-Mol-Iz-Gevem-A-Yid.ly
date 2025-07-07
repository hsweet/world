\version "2.22.0"
\include "english.ly"
%\pointAndClickOff
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
  \key g \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global

  \partial 8 d8    %lead in notes
  \mark \default
  d8 g16 g g8 g
  bf4. r8
  d,8 g16 g g8 g
  bf8 g d4

  d8 g16 g g8 g16 g
  g16(c) bf8(bf16) bf bf bf|
  bf16(a) g8
  c16(d) c8
  g4 g8 r \bar"||"
  % shabbos....
  \grace bf8 d8 d c16(d) c8
  bf8 bf r bf16(c)|
  d8 d c16(d) c8
  bf8 bf r bf16 c

  d8 d c c16 c
  bf8 bf a g16 a|
  bf8 bf a16(g) a8
  g8 g4.
 \break
  \repeat volta 2{
    \mark \default
    d'16 f e8 r16 d cs bf
    cs16 e d8 d d
  }
  \mark \default
  bf16 d cs8 r16 bf a g|
  a16 bf g8 g g
  a16 bf g8 g g
  a16bf g8 r4
}
%################################# Lyrics #####################
\addlyrics{
  \set stanza = #"1. "
  A mol iz ge -- ven a yid
  Hot er ge -- hat a yi -- de -- ne
  Hot er ge -- hey -- sn ge -- hey -- sn
  Zi zol im koy -- fn vayn oyf sha -- bes

  Sha -- bes sha -- bes sha -- bes
  vu nemt men vayn oyf sha -- bes
  Siz ni -- to keyn zaltz siz ni -- to keyn smaltz
  iz vu nemt men vayn oyf sha -- bes?

  Ya be bay  ba ba ba Ya be bay  ba ba
  Ya be bay  ba ba ba Ya be bay  ba ba
  Ya be bay  ba ba Ya be ba
}

\addlyrics{

 \repeat unfold 23 { _  }\set stanza = #"2. "
 Zol im ba -- kn kha -- le far sha -- bos
  \repeat unfold 6 { _ }
 %Sha -- bes sha -- bes sha -- bes
 vu nemt men khale oyf sha -- bos?
  \repeat unfold 10 { _ } %siz nito
 %Siz ni -- to keyn zaltz siz ni -- to keyn smaltz
 iz vu nemt men khale oyf sha -- bos?
}

\addlyrics{

  \repeat unfold 23 { _  }\set stanza = #"3. "
  Zi zol im kok -- hn fleyhs ofy sha -- bos
  \repeat unfold 6 { _ } % shabos shabos
  %Sha -- bes sha -- bes sha -- bes
  vu nemt men fleysh oyf sha -- bos?
  \repeat unfold 10 { _ } %siz nito
  Iz vu nemt men fleysh oyf sha -- bos?
}

\addlyrics{

  \repeat unfold 23 { _  }  \set stanza = #"4. "
  Zi zol im mak -- hn tsimes far sha -- bos
    \repeat unfold 6 { _ }
  % Sha -- bes sha -- bes sha -- bes
  Siz bald a -- vek der sha -- bos
   Un iz bitter vi  toyt,
  on a sti -- kl broyt
  Vu nemt men a rubl oyf sha -- bos?
}
%################################# Chords #######################
harmonies = \chordmode {
  s8 g2*3:m
  ef4 d4
  g2*2:m
  ef4 c4
  g2:m
  bf4 f4
  bf4*3 f4
  bf2
  g4:m c4:m
  g4:m c4:m
  g4:m d4
  g2*3:m  % no chord over next section?
  %b part
  %C part
  ef2
  g2*3:m
}

\score {
  % transpose score below
  \transpose g e
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "A Mol Iz Geven A Yid"
    subtitle=""
    composer= ""

    instrument =""
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
%{
% more verses:
\markup{}
\markup {
  \font-size #2
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