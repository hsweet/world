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

%#################################### Melody ########################
melody = \relative c'' {
  \clef treble
  \key  d\major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  b4-- ->(b-- ->)e(e16 d)e\downbow fs\upbow|
  e4->(d8->)d cs4-> b->|
  e4-> \breathe d8->\upbow cs16 d e8-> b(b-. -> g\upbow)|
  a4->(b8->)g fs8 e( e-> fs)|

  \repeat volta 2{
  \mark \default
    g4-> (g16->)fs g a b8-> b(b-. -> g\upbow)|
    a4->(b8->)g fs-> e(e-. -> fs\upbow)|
    g4->(g16->)fs g a b8-> b(b-. -> e,\upbow)|
  }
  \alternative {
    { e4->(e8-> e)fs-> e(e-. -> fs\upbow)|}
    {e4->(e8->)e fs8-> e4. |}
  }
  \break
  %*********************************************
  e4 (a8) a b4 a|
  g4(g8->)e e4 d|
  e4(e->)e r|
  e'4(b8)b^"tip"  b d( d-. -> d)|  %phrasing slur

  e8-> d(d->)d(b4->)a|
  b4(b->) \grace e (d) r  %can't read note original

  \repeat volta 2{
  \mark \default
    e4(b8)b^"tip"  b d( d-. -> d)|  %phrasing slur
    e8-> d(d->)d(b4->)a|
    b\upbow (b8-> fs-.)g4\upbow(g8-> cs-.)|
    d4(cs8 )cs b a(a-. -> gs\upbow)|

    a4\upbow \breathe g16\downbow fs g a b8 a(a-> b,)
    e4(e) e r
  }
  \break
  %********************************************
  % \alternative { { }{ } }
  e4.^\markup{\box 3} fs8 g e4.\glissando|
  b'4.-4   d8 e b4-0 a8~|
  a4. g8 b a \tuplet 3/2{b,\upbow cs ds}|
  e4 e8 ds e4 \tuplet 3/2{b8\upbow cs ds}|

  e4. fs8 g e4.\glissando|
  b'4.-4   d8 e b4.-0|
  a4 g8\upbow g\upbow b a \tuplet 3/2{b,8\upbow cs ds}|
  e4 e8 ds e\upbow g16\downbow a b c cs ds|

  \repeat volta 2{
  \mark \default
    e4. e8 e d4.|
    cs2 a4. a8~|  %tie to next note
    b4 d8\upbow d\upbow e b4.|
    g2 e4(e16)b-> cs ds|

    e4. fs8 g e4.\glissando|
    b'4.-4   d8 e b4.-0|
    a4 g8\upbow g\upbow b a \tuplet 3/2{b,8\upbow cs ds}|

  }
  \alternative {
    {e4 e8 ds e\upbow g16\downbow a b c cs ds}
    {e,4 e8 ds e4 r|}
  }
  \break

  %*************************************************
  e8-> \downbow ^"Kukorica csutaja"e\((e-.)ds' \upbow \) e-> e _"tip"\( (e16) d e fs\)|
  e8-> b \((b-. -> ) e,\upbow\) a4-> (a16)[fs g a]|
  b4 -- -> e -- -> b -- -> \downbow \breathe
  g16 -> \downbow fs g a|  %4
  b8-> a\((a-. ->) e\upbow \) e4 -> r16 b'\upbow cs ds| %4

  e8-> b \((b-. -> ) e,\upbow\) a4-> \downbow \breathe  g16\downbow[fs g a]|
  b8-> a\((a-. ->) e\upbow \) e4 ->(e16->)a,\upbow b cs|
  d8-> d\( (d-. ->)fs\upbow \)e4->(b'8->)b|
  a8-> e \( (e-. ->)b\upbow \)e4-> r16 b^"1st time only" cs ds % r   |

  %******************************************************


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
    title= "Lassu Csardas"
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
