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
melody = \relative c''' {
  \clef treble
  \key  e\major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  cs4-- ->(cs-- ->)fs(fs16 e)fs\downbow gs\upbow|
  fs4->(e8->)e ds4-> cs->|
  fs4-> \breathe e8->\upbow ds16 e fs8-> cs(cs-. -> a\upbow)|
  b4->(cs8->)a gs8 fs( fs-> gs)|

  \repeat volta 2{
  \mark \default
    a4-> (a16->)gs a b cs8-> cs(cs-. -> a\upbow)|
    b4->(cs8->)a gs-> fs(fs-. -> gs\upbow)|
    a4->(a16->)gs a b cs8-> cs(cs-. -> fs,\upbow)|
  }
  \alternative {
    { fs4->(fs8-> fs)gs-> fs(fs-. -> gs\upbow)|}
    {fs4->(fs8->)fs gs8-> fs4. |}
  }
  \break
  %*********************************************
  fs4 (b8) b cs4 b|
  a4(a8->)fs fs4 e|
  fs4(fs->)fs r|
  fs'4(cs8)cs^"tip"  cs e( e-. -> e)|  %phrasing slur

  fs8-> e(e->)e(cs4->)b|
  cs4(cs->) \grace fs (e) r  %can't read note original

  \repeat volta 2{
  \mark \default
    fs4(cs8)cs^"tip"  cs e( e-. -> e)|  %phrasing slur
    fs8-> e(e->)e(cs4->)b|
    cs\upbow (cs8-> gs-.)a4\upbow(a8-> ds-.)|
    e4(ds8 )ds cs b(b-. -> as\upbow)|

    b4\upbow \breathe a16\downbow gs a b cs8 b(b-> cs,)
    fs4(fs) fs r
  }
  \break
  %********************************************
  % \alternative { { }{ } }
  fs4.^\markup{\box 3} gs8 a fs4.\glissando|
  cs'4.-4   e8 fs cs4-0 b8~|
  b4. a8 cs b \tuplet 3/2{cs,\upbow ds es}|
  fs4 fs8 es fs4 \tuplet 3/2{cs8\upbow ds es}|

  fs4. gs8 a fs4.\glissando|
  cs'4.-4   e8 fs cs4.-0|
  b4 a8\upbow a\upbow cs b \tuplet 3/2{cs,8\upbow ds es}|
  fs4 fs8 es fs\upbow a16\downbow b cs d ds es|

  \repeat volta 2{
  \mark \default
    fs4. fs8 fs e4.|
    ds2 b4. b8~|  %tie to next note
    cs4 e8\upbow e\upbow fs cs4.|
    a2 fs4(fs16)cs-> ds es|

    fs4. gs8 a fs4.\glissando|
    cs'4.-4   e8 fs cs4.-0|
    b4 a8\upbow a\upbow cs b \tuplet 3/2{cs,8\upbow ds es}|

  }
  \alternative {
    {fs4 fs8 es fs\upbow a16\downbow b cs d ds es}
    {fs,4 fs8 es fs4 r|}
  }
  \break

  %*************************************************
  fs8-> \downbow ^"Kukorica csutaja"fs\((fs-.)es' \upbow \) fs-> fs _"tip"\( (fs16) e fs gs\)|
  fs8-> cs \((cs-. -> ) fs,\upbow\) b4-> (b16)[gs a b]|
  cs4 -- -> fs -- -> cs -- -> \downbow \breathe
  a16 -> \downbow gs a b|  %4
  cs8-> b\((b-. ->) fs\upbow \) fs4 -> r16 cs'\upbow ds es| %4

  fs8-> cs \((cs-. -> ) fs,\upbow\) b4-> \downbow \breathe  a16\downbow[gs a b]|
  cs8-> b\((b-. ->) fs\upbow \) fs4 ->(fs16->)b,\upbow cs ds|
  e8-> e\( (e-. ->)gs\upbow \)fs4->(cs'8->)cs|
  b8-> fs \( (fs-. ->)cs\upbow \)fs4-> r16 cs^"1st time only" ds es % r   |

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
