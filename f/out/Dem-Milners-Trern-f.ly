\version "2.18.0"
\include "english.ly"
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
  \key a \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
  \partial 8*1 g8   %lead in notes
  c8 d e4 c8 g
  c8 d e4 d8 g,
  \break
  c8 d e c f e
  d4. r4 a8
  \break

  \repeat volta 2{
    %\mark \default
    d8 e f a a\breathe g
    c,d8 e g g\breathe a,|
    \time 4/4 c8 d e c d4. b8|
    \time 3/4
  }
  \alternative{
    {c2(c8) a}
    {c2 (c4)}

  }


}
%################################# Lyrics #####################
\addlyrics{
  \set stanza = #"1. "
  Oy, vi -- fl  yo -- rn
  Zey -- nen far -- fo -- rn
  Zayt ikh bin mil -- ner ot o do?
  Di re -- der drey -- en zikh,
  Di yo -- rn gey -- en zikh,
  Ikh bin shoyn alt, un grayz un gro. Di
}

\addlyrics{
  \set stanza = #"2. "
  S'iz teg fa -- ran -- en,
  Kh'vil mihk der -- man -- en
  Tsi kh'hob ge -- hat a shti -- kl glik?
  \repeat unfold 12 {\skip 2}
  Ke -- yn ent --fer iz ni --to tsu -- rik.
}

\addlyrics {
  \set stanza = #"3. "
  Kh'hob ge -- hert zo -- gn,
  Me vil mikh far -- yo -- gn
  Arroys fun dorf un fun der mil;
  \repeat unfold 12 {\skip 2}
  Oy, on an ek un on a tsil
}


\addlyrics {
  Vu vel ikh von -- nen,
  Ver vet mikh shoy -- nen?
  Ikh bin shoun alt, ikh bin shoyn mid;
  \repeat unfold 12 {\skip 2}
  Un oykh mit zey geyt oys der yid.

}

%################################# Chords #######################
harmonies = \chordmode {

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
    title= "Dem Milners Trern"
    subtitle="The Miller's Tears"
    composer= "M.M. Warshawsky"
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
