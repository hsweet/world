\version "2.18.0"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

%#################################### Melody ########################
melody =\transpose eis' e' \relative c'' {
  \clef treble
  \key ais \minor
  \time 4/4

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    eis4 eis8 dis eis dis4 dis8|
    cis8 dis dis cis8 b2|
    ais1|

    eis'4 eis8 dis eis dis4 dis8|
    cis8 dis dis cis8 b2|
    ais1|

    %second phrase
    cis8 bis dis4 cis2|
    cis8 bis dis4 cis2|
    cis8 bis cis dis b( gis) ais4|
    b2 ais2|  %check time value

  }
  %\alternative { { }{ } }

  \repeat volta 2{

  }
  % \alternative { { }{ } }

}
%################################# Lyrics #####################
\addlyrics{
  Jaj Ke -- tri Ke -- tri \skip2 a -- le pa -- la man -- de,
  \skip2 Ke -- tri Ke -- tri,  -_ ph -- ir pa -- la man -- de,
  Av tu pa -- le, bes tu te -- le,
  Av tu pa -- la man -- de!
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
    \new Staff
    \melody
  >>
  \header{
    title= "Ketri, Ketri"
    subtitle=""
    composer= "Roma"
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}


% more verses:
\markup{}
\markup {
  \fill-line {
    \hspace #0.1 % distance from left margin
    \column {
      \line {
        "2."
        \column {

          "Ketri Ketri, sukaresz khel mange,"
          "Ketri Ketri, gilyabar tu mange,"
          "Gilyabar tu taj khel mange,"
          "Ale pala mande!"
        }
      }
      \hspace #0.2 % vertical distance between verses
      \line {
        ""
        \column {
          ""
        }
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line {
        ""
        \column {
          ""
        }
      }
      \hspace #0.2 % distance between verses
      \line {
        ""
        \column {
          ""
        }
      }
    }
    \hspace #0.1 % distance to right margin
  }
}


%{
Jaj Ketri Ketri ale pala mande,
Ketri Ketri, phir pala mande,
Av tu pale, bes tu tele,
Av tu pala mande!

Kaszavi szan, szar e lulugyorri,
Sukar sukar cini lulugyorri,
Losal losal murro jilo,
Pasa mande t’avesza.

After here below chart

Ketri Ketri, dukhal murro jilo,
Ketri Ketri, pharol murro jilo,
Csumidam me tyiro jilo,
Ale pasa mande!

Ketri Ketri, sukaresz khel mange,
Ketri Ketri, gilyabar tu mange,
Gilyabar tu taj khel mange,
Ale pala mande!

Ketri ketri, mistoj aba mange,
Mistoj aba vi murre jileszke,
Kaj athe szan, pasa mande,
Av tu murri romnyorri!

Tu te khelej, losal murro jilo,
Tu te gilyabarej, pharol murro jilo,
Av tu pale, bes tu tele,
Av tu murri romnyi!

Ketri ketri, mistoj aba mange,
Mistoj aba vi murre jileszke,
Kaj athe szan, pasa mande,
Av tu murri romnyorri!

Tu te khelej, losal murro jilo,
Tu te gilyabarej, pharol murro jilo,
Av tu pale, bes tu tele,
Av tu murri romnyi!

and in English:
Ketri Ketri, come after me,
Ketri Ketri, live with me,
Come back, sit down here,
Come after me!
You are like a little flower,
Beautiful little flower,
My heart is happy, happy,
Be with me!
Ketri Ketri, my heart is heavy,
Ketri Ketri, my heart is breaking,
I will kiss your heart,
Come and sit beside me!
Ketri Ketri, dance for me,
Ketri Ketri, sing now for me,
Do sing and dance for me,
Come after me!
Ketri Ketri, I am already merry,
My heart is also merrier,
Because I can see you beside me,
Marry me, be my wife!
When you dance, my heart is happy,
When you sing, my heart breaks,
Come back to me,
Marry me, be my wife!
Ketri, Ketri, I am already merry,
My heart is also merrier,
Because I can see you beside me,
Marry me, be my wife!
When you dance, my heart is happy,
When you sing, my heart breaks,
Come back to me,
Marry me, be my wife!

%}