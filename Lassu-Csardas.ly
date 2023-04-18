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
  \key  g\major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  e4-- ->(e-- ->)a(a16 g)a\downbow b\upbow|
  a4->(g8->)g fs4-> e->|
  a4-> \breathe g8->\upbow fs16 g a8-> e(e-. -> c\upbow)|
  d4->(e8->)c b8 a( a-> b)|

  \repeat volta 2{
  \mark \default
    c4-> (c16->)b c d e8-> e(e-. -> c\upbow)|
    d4->(e8->)c b-> a(a-. -> b\upbow)|
    c4->(c16->)b c d e8-> e(e-. -> a,\upbow)|
  }
  \alternative {
    { a4->(a8-> a)b-> a(a-. -> b\upbow)|}
    {a4->(a8->)a b8-> a4. |}
  }
  \break
  %*********************************************
  a4 (d8) d e4 d|
  c4(c8->)a a4 g|
  a4(a->)a r|
  a'4(e8)e^"tip"  e g( g-. -> g)|  %phrasing slur

  a8-> g(g->)g(e4->)d|
  e4(e->) \grace a (g) r  %can't read note original

  \repeat volta 2{
  \mark \default
    a4(e8)e^"tip"  e g( g-. -> g)|  %phrasing slur
    a8-> g(g->)g(e4->)d|
    e\upbow (e8-> b-.)c4\upbow(c8-> fs-.)|
    g4(fs8 )fs e d(d-. -> cs\upbow)|

    d4\upbow \breathe c16\downbow b c d e8 d(d-> e,)
    a4(a) a r
  }
  \break
  %********************************************
  % \alternative { { }{ } }
  a4.^\markup{\box 3} b8 c a4.\glissando|
  e'4.-4   g8 a e4-0 d8~|
  d4. c8 e d \tuplet 3/2{e,\upbow fs gs}|
  a4 a8 gs a4 \tuplet 3/2{e8\upbow fs gs}|

  a4. b8 c a4.\glissando|
  e'4.-4   g8 a e4.-0|
  d4 c8\upbow c\upbow e d \tuplet 3/2{e,8\upbow fs gs}|
  a4 a8 gs a\upbow c16\downbow d e f fs gs|

  \repeat volta 2{
  \mark \default
    a4. a8 a g4.|
    fs2 d4. d8~|  %tie to next note
    e4 g8\upbow g\upbow a e4.|
    c2 a4(a16)e-> fs gs|

    a4. b8 c a4.\glissando|
    e'4.-4   g8 a e4.-0|
    d4 c8\upbow c\upbow e d \tuplet 3/2{e,8\upbow fs gs}|

  }
  \alternative {
    {a4 a8 gs a\upbow c16\downbow d e f fs gs}
    {a,4 a8 gs a4 r|}
  }
  \break

  %*************************************************
  a8-> \downbow ^"Kukorica csutaja"a\((a-.)gs' \upbow \) a-> a _"tip"\( (a16) g a b\)|
  a8-> e \((e-. -> ) a,\upbow\) d4-> (d16)[b c d]|
  e4 -- -> a -- -> e -- -> \downbow \breathe
  c16 -> \downbow b c d|  %4
  e8-> d\((d-. ->) a\upbow \) a4 -> r16 e'\upbow fs gs| %4

  a8-> e \((e-. -> ) a,\upbow\) d4-> \downbow \breathe  c16\downbow[b c d]|
  e8-> d\((d-. ->) a\upbow \) a4 ->(a16->)d,\upbow e fs|
  g8-> g\( (g-. ->)b\upbow \)a4->(e'8->)e|
  d8-> a \( (a-. ->)e\upbow \)a4-> r16 e^"1st time only" fs gs % r   |

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
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Lassu Csardas"
    subtitle=""
    composer= ""
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
