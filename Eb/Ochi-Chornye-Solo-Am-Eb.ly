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
  \key b \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
intro = \transpose b fs' \relative c'{
  \global
  s2
  e8 [(as cs fs)] as,[( cs fs as)]
  cs,8[( fs as cs)] \harmonicsOn fs4
  \breathe cs \breathe
  b4 \harmonicsOff r r2
}

melody = \transpose b fs' \relative c ' {
  \global\partial 4*2 es'4 \downbow  fs' \upbow   %lead in notes
  g'4.(fs'8) fs'2~
  fs'4 r es' fs'
  g'4.(fs'8) fs'2~
  fs'4 r fs'  b

  b4.(as8) as2~
  as4 r fs' cs''|
  cs'4.(b8) b2~|
  b4 r b d'

  d'4.(cs'8) cs'2~|
  cs'4 r cs' d'
  cs'4.(b8) b2~|
  b4 r es fs'

  g'4.(fs'8) fs'2~
  fs'4 r cs' d'
  b1~
  b2 r


}

improv = \transpose b fs'  \relative c' {
  \global
  \partial 4*2 es4 \downbow  fs \upbow   %lead in notes

  \repeat volta 2{
    %\mark \default
    g8\downbow[ g fs] r g[g(fs)] r
    %bf8 \downbow bf[bf(a)] r bf[ bf(a)]
    as8 [cs(e) g](fs)[ e d cs]
    cs8 [cs(b)] r cs\downbow[b r fs]~
    fs2 b4 -. \upbow b -. \upbow

    d8 [cs] r4 cs4. \upbow \breathe b8 \downbow
    as8 [cs(e) g](fs)[ e d cs]
    d8 [b  fs] r b8\upbow [fs d] r
    b2 d'4\upbow d \upbow

    d8\downbow[ cs\upbow (r g)] d'[e(d)] r
    d2 cs4\upbow d\upbow
    cs8 \downbow [cs(r fs)] cs\downbow [d(cs)] r
    b2 es,4\upbow (fs4)\upbow

    g8\downbow [fs a g] (fs)[e(d) cs]
    cs4 cs d cs
    cs2\downbow b8[b r b]~
    b2 r2|

    %{
    a8\downbow [b cs] r cs\upbow[e g] r  %17
    a,8\downbow [b cs] r cs\upbow[e g] r
    d8\downbow [e f a  ]cs[e r cs \upbow]
    d8 [a f d](d2)

    \tuplet 3/2 {e8[ (f e]} d) [e]\upbow f[g a] r|
    bf8 \upbow [a r cs] r e\upbow [r g\upbow]
    f8\downbow [f r f] r e\upbow [ r d]~
    d2 a'4\upbow (bf)\upbow

    a8[g] r4 d8\downbow [bf r g] ~
    g2 g'4 \upbow (a4 \upbow)
    g8\downbow [f r d] a [r f d] ~|
    d2. \breathe d4 \upbow

    e8 [f g a] (bf)[a (g) f]
    e8[d cs] r a'4\upbow(a4 \upbow)
    \tuplet 3/2 {e8 [(f e]} d4 \tuplet 3/2 {e8 [(f e]} d4
    d2  r
    %}

  }

}
improvtwo =\transpose b fs'  \relative c' {
  \global
  \partial 4*2 es4 \downbow  fs \upbow   %lead in notes
  fs8\downbow [gs as] r as\upbow[cs e] r  %17
  fs,8\downbow [gs as] r as\upbow[cs e] r
  b8\downbow [cs d fs  ]as[cs r as \upbow]
  b8 [fs d b](b2)

  \tuplet 3/2 {cs8[ (d cs]} b) [cs]\upbow d[e fs] r|
  g8 \upbow [fs r as] r cs\upbow [r e\upbow]
  d8\downbow [d r d] r cs\upbow [ r b]~
  b2 fs4\upbow (g)\upbow

  fs8[e] r4 b8\downbow [g r e] ~
  e2 e'4 \upbow (fs4 \upbow)
  e8\downbow [d r b] fs [r d b] ~|
  b2. \breathe b4 \upbow

  cs8 [d e fs] (g)[fs (e) d]
  cs8[b as] r fs'4\upbow(fs4 \upbow)
  \tuplet 3/2 {cs8 [(d cs]} b4 \tuplet 3/2 {cs8 [(d cs]} b4
  b2  r
}
%################################# Lyrics #####################
%\addlyrics{  }
text = \lyricmode {

}
%################################# Chords #######################
harmonies = \transpose b fs'  \chordmode {
  s2
  fs1*2:7
  b1*2:m
  fs1*2:7
  b1*2:m
  e1*2:m
  b1*2:m
  fs1*2:7
  b1*2:m

  %{
 a1*2:7
 d1*2:m
 a1*2:7
 d1*2:m
 g1*2:m
 d1*2:m
 a1*2:7
 d1*2:m
  %}
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff = "zero"
    instrumentName = "Intro"
  }  { \autoBeamOff \intro }
  \new Staff = "one"
  instrumentName = "Melody"
}  { \autoBeamOff \melody }
\new Staff  = "two"
instrumentName = "Improv1"} { \autoBeamOff \improv }
\new Staff = "three"
instrumentName = "Improv2"}{ \autoBeamOff \improvtwo }
\new Lyrics \lyricsto "one" \text
>>
\header{
  title= "Ochi Chorney"
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
	}\version "2.18.0"
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
  \key d \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
  }
  \alternative {
    { }
    { }
  }

  \repeat volta 2{
   \mark \default
  }
   \alternative {
     { }
     { }
   }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {

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
    title= ""
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

}

      }
    }
    \hspace #0.1 % distance to right margin
  }
}

%}
