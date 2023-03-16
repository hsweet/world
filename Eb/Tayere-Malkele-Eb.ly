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
  \key a \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  cs8 cs b' a gs4.(fs8)
  es8 fs es d cs2
  fs4 es8 d es4 fs
  gs2 r

  cs,8 cs b' a gs4.(fs8)
  es8 fs es d cs4(b)
  b8(a') gs fs es (b) cs(d)
  cs2 r

  fs8 gs as as as 4 as
  gs8 as b as gs4 fs
  cs'4 bs8 a gs4 a
  bs2 r

  fs8 gs as as as 4 as
  gs8 as b as gs4 fs
  cs'4 bs8 a bs(a) gs(fs)
  gs2 r

  \bar"||"

  es8^Refrain es es es es es 4 cs8
  es8 fs fs fs fs4 fs
  a4 gs8 fs es4 fs
  gs2. r8 cs,

  es4 es es es 8 r
  es8 fs fs fs fs4 b8 \fermata r
  b8(a) gs fs gs(fs) es(es)
  cs2 r
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
  cs1*2
  fs1:m
  cs1*3
  b1:m
  cs1 %8
  fs1
  cs4*3 fs4
  fs1:m
  gs1
  fs1
  cs4*3 fs4
  fs1:m
  cs1
  cs1
  fs1*2:m
  cs1*2
  fs4*3:m b4:m
  b1:m
  cs1

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \transpose cs' b\harmonies
    }
    \transpose cs' b\new Staff   \melody
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
