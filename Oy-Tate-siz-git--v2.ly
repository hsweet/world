\version "2.18.0"
\language "english"
%\pointAndClickOff


\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }
%\markup{ Got something to say? }

melody = \relative c'' {
  \clef treble

  \key c\major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet


  \repeat volta 2{
  \mark \default
    a8.  a16 e8 a~
    a16 a a a e8 a
    a,8 a'e a
    a16 a a a e8 a
    e8 f e f %5
    gs8 a(a)a
    gs8 e' d16 c b a
    gs8 e16 e fs 8 gs
    a8. a16 e8 e
    a16 a a a e8 a
    a,8 a'e a~
    a16 a a a e8 a
    e8 f e f16 e
    d4 f


  }

  \alternative {
    {
      e8 e' d16 c b a
      gs8 e fs gs
    }
    {
      e8 e'16 e b8 gs
      e8. e16 b8 d
    }
  }


  \repeat volta 2{
  \mark \default
    e8.   e16 fs8 a
    d8 a fs d
    d8 fs a, fs'
    d8 fs a, fs'

    e8.  e16 fs8 a
    d8 a fs d
    %p2 original
    d4 f
  }
  \alternative {
    {e4. d8 }
    {e8 e16 e fs8 g }
  }

  \repeat volta 2{
  \mark \default
    a8. a16 d,8 a' ~
    a16 a a a e8 gs
    a8 a16 a c8 e
    a8 e c a
    a8. a16 e8 c|
    a8 a c e %31
    a8. a16 d,8 a' ~
    a16 a a a e8 gs
    a8. a16 e8 a~
    a16 a a a e8 fs
    a8. a16 e8 a~|
    a8 a e c'
    a8. a16 e8 c|
    a8 c e a
    gs8 a gs a %42
    gs4 f
    e8. e16 gs8 b
    e8 b gs e
    a8. a16 e8 a~
    a16 a a a e8 c
    a8. a16 c8 e
    a8 c e c
    a8. a16 e8 a~
    a16 a a a e8 gs
    a8. a16 e8 a~
    a16 a a a e8 gs
    a8. a16 e8 a~
    a8 a e a
    a8. a16 e8 a~
    a8 c e c
    gs8 a gs a
    gs4 f
    e8. e16 gs8 b
    e8 b gs f



  }

  \repeat volta 2{
  \mark \default
    e8   gs b, gs'
    e8 gs b, gs'
    e8 gs b, gs'
    e8 gs gs b

    e,8 gs b gs
    e8 gs b, gs'
    e4 f




  }

  \alternative {
    {e8 gs b, gs' }
    { e8 r e' r}
  }

}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff  \with{
      instrumentName = "Violin2"
    } \melody
  >>
  \header{
    title= "Oy Tate, S'iz Git "
    subtitle="2nd Part  "
    composer= ""
    instrument = "Violin"
    arranger=""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
