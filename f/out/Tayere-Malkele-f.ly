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
  \key g \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  b8 b a' g fs4.(e8)
  ds8 e ds c b2
  e4 ds8 c ds4 e
  fs2 r

  b,8 b a' g fs4.(e8)
  ds8 e ds c b4(a)
  a8(g') fs e ds (a) b(c)
  b2 r

  e8 fs gs gs gs 4 gs
  fs8 gs a gs fs4 e
  b'4 as8 g fs4 g
  as2 r

  e8 fs gs gs gs 4 gs
  fs8 gs a gs fs4 e
  b'4 as8 g as(g) fs(e)
  fs2 r

  \bar"||"

  ds8^Refrain ds ds ds ds ds 4 b8
  ds8 e e e e4 e
  g4 fs8 e ds4 e
  fs2. r8 b,

  ds4 ds ds ds 8 r
  ds8 e e e e4 a8 \fermata r
  a8(g) fs e fs(e) ds(ds)
  b2 r
}
%################################# Lyrics #####################
\addlyrics{
  Ver s'iz nit ge -- ven,
  Ver s'hot nit ge -- zen
  Ta -- ye --re Mal -- ke -- le
  Veyst nit, vos s'iz sheyn
  Veyst nit, vos s'iz kheyn,
  Ta -- ye --re Mal -- ke -- le
  \set stanza = #"1. "
  Ef -- nt zi di brem -- en
  Meg di zun zikh she -- men
  Ta -- ye --re Mal -- ke -- le
  Flam -- en i -- re oy -- gn
  Sheyt a velt ge -- boy -- gn
  Ta -- ye -- re Mal -- ke -- le
  %refrain
  Lo -- mir zikh der -- ma -- nen oyb
  she -- ners s'iz far -- a -- nen,
  Ta -- ye --re Mal -- ke -- le
  Mit ir in frey -- dn s'z dokh a gan -- ey  -- dn
  Ta -- ye --re Mal -- ke -- le
}

\addlyrics {

  \repeat unfold 32{\skip 2}
  \set stanza = #"2. "
  Fla -- kern di bli -- kn:
  Dakht zikh sruf -- im ki -- kn,
  Ta -- ye -- re Mal -- ke -- le —
  She -- ner vi Shul -- a -- mis,
  Hey -- ser nokh vi tam -- iz,
  Ta -- ye -- re Mal -- ke -- le.
}

\addlyrics {


  \repeat unfold 32{\skip 2}
  \set stanza = #"3. "
  Ho -- bn den di im -- es
  Az -- a sha -- bes-tsi -- mes.
  Ta -- ye -- re Mal -- ke -- le?
  Far -- mo -- gn ze -- ye -- re su -- des
  A -- za shol -- esh-sud -- es,
  Ta -- ye -- re Mal -- ke -- le?
}
\addlyrics {

  \repeat unfold 32{\skip 2}
  \set stanza = #"4. "
  Pey -- sakh nok -- hn sey -- der
  In yom -- tev -- dik kley -- der,
  Ta -- ye -- re Mal -- ke -- le,
  So -- nim oyf le -- ha -- khes,
  Ver hot a -- za nak -- hes,
  Ta -- ye -- re Mal -- ke -- le.


}

%################################# Chords #######################
harmonies = \chordmode {
  b1*2
  e1:m
  b1*3
  a1:m
  b1 %8
  e1
  b4*3 e4
  e1:m
  fs1
  e1
  b4*3 e4
  e1:m
  b1
  b1
  e1*2:m
  b1*2
  e4*3:m a4:m
  a1:m
  b1

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \transpose b, a,\harmonies
    }
    \transpose b, a,\new Staff   \melody
  >>
  \header{
    title= "Tayere Malkele "
    subtitle=""
    composer= "Nokhem Sternheim"
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
