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
  \key c \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
  e8 e d' c b4.(a8)
  gs8 a gs f e2
  a4 gs8 f gs4 a
  b2 r

  e,8 e d' c b4.(a8)
  gs8 a gs f e4(d)
  d8(c') b a gs (d) e(f)
  e2 r

  a8 b cs cs cs 4 cs
  b8 cs d cs b4 a
  e'4 ds8 c b4 c
  ds2 r

  a8 b cs cs cs 4 cs
  b8 cs d cs b4 a
  e'4 ds8 c ds(c) b(a)
  b2 r

  \bar"||"

  gs8^Refrain gs gs gs gs gs 4 e8
  gs8 a a a a4 a
  c4 b8 a gs4 a
  b2. r8 e,

  gs4 gs gs gs 8 r
  gs8 a a a a4 d8 \fermata r
  d8(c) b a b(a) gs(gs)
  e2 r
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
  e1*2
  a1:m
  e1*3
  d1:m
  e1 %8
  a1
  e4*3 a4
  a1:m
  b1
  a1
  e4*3 a4
  a1:m
  e1
  e1
  a1*2:m
  e1*2
  a4*3:m d4:m
  d1:m
  e1

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \transpose e d\harmonies
    }
    \transpose e d\new Staff   \melody
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
