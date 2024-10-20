\version "2.20.0"
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
  \key d \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  \partial 16 d16    %lead in notes
  d8(a) d d d4\fermata(d8.) d16|
  f8(d) g4 f4. r16 f|
  a8. a16 a8. a16 \times 2/3{a8 (f) a} \times 2/3{g8 f8. f16}
  c'4->  a16 a8 a16  \times 2/3{ a8(f) a} g8 f16 f|


  g4 g8 g g f c' bf
  a4 g8 f c' bf a4 \bar"||"|
  a16 a8. a16 a8 a16 \times 2/3{a8 (f) a} \times 2/3{g8(f8.) a16}|
  c4 a16 a8. \times 2/3{a8(f)a}  g8(f)|

  f16 a g8(g4)  f16 a g8(g16) d d d
  f16 f8(f16) f16 f d8 g4.( f16 e)
  f16 f8. e16 e8. d4(d16) d d d |
  f16 f8(d16) f16 f8(d16) g4.(f16 e)|

  f16 f8. e16 e8. d4(d8) r


}
%################################# Lyrics #####################
\addlyrics{ \set stanza = #"1. "

            Kayn kotsk fort men nisht,
            Kayn kotsk geyt men;
            Vayl kotsk iz dokh bim -- koym -- ha -- mik -- desh,
            Vayl kotsk iz dokh bim -- koym -- ha -- mikd -- esh,
            Kayn Kotsk darf men oy  -- le -- re -- gl zayn.
            oy  -- le -- re -- gl zayn.

            Regl iz dokh der taytsh a fus —
            Kayn Kotsk darf men geyn tsu fus,
            Zing -- en -- dik un tantsn -- dik,
            Un az kha -- si -- dim gey -- en kayn Kotsk,
            Geyt men mit ge -- zang.
            Un az kha -- si -- dim geyen kayn Kotsk,
            Geyt men mit ge -- zang.

}

\addlyrics{
            \repeat unfold 41 {\skip2}
            \set stanza = #"2. "
            Regl iz dokh der taytsh a geveyn -- shaft
            Men darf zikh  tsu geyn kayn Kotsk,
            %Men darf zikh ge -- veyn -- en tsu ge -- yn kayn Kotsk
            Zing -- en -- dik un tantsn -- dik.
            Un az kh -- si -- dim geyen kayn Kotsk,
            Geyt men mit a tants.
            Un az kh -- si -- dim gey -- en kayn Kotsk,
            Geyt men mit a tants.

}

\addlyrics{

            \repeat unfold 41 {\skip2}
            \set stanza = #"3. "
            Regl iz dokh der taytsh a _ yom -- tev
            Gut yom -- tev, gut yom -- tev, gut yom -- tev gut yom -- tev!
            Un az kh -- si -- dim gey -- en kayn Kotsk,
            Iz dokh a groy -- ser yom -- tev.
            Un az kh -- si -- dim gey -- en kayn Kotsk,
            Iz dokh a groy -- ser yom -- tev.

}

%################################# Chords #######################
harmonies = \chordmode {
  s16
  d4*5:m
  g4:m d4*3:m f4 *7 %left out quick c chords
  g4*3:m c4:m
  f2 c4 a
  d4*3:m g4:m %7
  f4*3 c8 f8*2
  g8*3:m d8:m g8*3:m
  d2:m g2:m
  d4:m a4:7 d2*2:m
  g2:m
  d4:m a4:7 d2:m

}

\score {
  % transpose score below
  %\transpose c d
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Kotsk"
    subtitle=""
    composer= ""

    instrument ="Violin"
    arranger= ""
  }
  \layout{indent = 1.0\cm}k
  \midi {\tempo 4 = 80}
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