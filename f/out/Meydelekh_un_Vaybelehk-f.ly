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
  \key a \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \transpose e a, \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    e16 e e e e e e8
    a8 gs f e
    gs8 gs gs b
    a8 gs f e|

    e8 e e e
    a8 gs f e
    d8 e f gs16 f
    e8 e e e
  }
  \break

  \repeat volta 2{
    \mark \default
    a8. b16 c b a8|
    c8 e b4|
    a16 a a b c b a8|
    gs8 f e d

    d8-> gs-> gs-> b->
    d8 c16 b a4|
    gs8. f16 gs8. f16
    e8 f e d

    d8-> gs-> gs-> b->
    d8 c16 b a4|
    gs8. f16 gs8. f16
    f8 e r4
  }
  % \alternative { { }{ } }

}
%################################# Lyrics #####################
\addlyrics{
  \set stanza = #"1. "
  Mey -- de -- kekh un vay -- be -- lekh
  tanst a drey -- dl
  Ley -- zer Yosh -- ke krigt a mey -- dl
  Na -- dn krigt er a ka -- do -- khes ka -- les so -- nim _
  af tse -- lo -- khes.
  Shplit zeh klez -- mer -- lekh shpilt tsum takt!
  Tu -- pn mit di fi -- se -- lekh knak, knak, knak, _
  Lo -- mir a -- le frey -- lekh _ zayn
  lan te rem te ram ta ra ra,
  trin -- ken bron -- fn trin -- ken - vayn
  lam te rem te ra ra
}
\addlyrics{
  \set stanza = #"2. "
  Men ﬁrt dem kho -- sn tsu der ka -- le tsu bade -- kns,
  Lek -- ekh, bron -- fn vet nit kle -- kn.
  Un der kho -- sn bet dem ta -- les.
  Der mek -- hu -- tn vert be -- da --les!
}
%################################# Chords #######################
harmonies = \chordmode {
  %d2*6
  a2
  d8:m
  a8*7
  d8:m
  a8*7
  d8:m
  a8*3

  g2:m a2
  %b
  d4*3:m
  a4 %10
  d2:m %11
  a2  %12
  g2*3:m %

  a2
  g2*3:m
  a2

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
    title= "Meydelekh un Veybelekh"
    subtitle=""
    composer= ""
    instrument =""
    arranger= "Andres Schmitges"
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 120

    % \midi { }
  }
}

% more verses:
\markup{}
\markup {
  \fill-line {
    \hspace #0.1 % distance from left margin
    \column {
      \line { "3."
              \column {
                "Klingt in talsn mit lefl,gopl,meser,"
                "Makhl di simkhe nokh ﬁl greser!"
                "Oys beroyges mit mekhutonim"
                "Gute freylekhe kabtsonim!"
              }
      }
      \hspace #0.2 % vertical distance between verses
      \line { "4."
              \column {
                "Fun der khupe tsu der sude. makht a vare!"
                "Ot geyt tantsn di bobe Sore!"
                "Un der alter feter Yoshe,"
                "Varfl mil di ﬁselekh gor nishkoshe!"
              }
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line { "5."
              \column {
                "Shikt der kale tsinene laykhter, trahumes,"
                "Un far dem samovartshick a blekhene trube,"
                "A zeglenem meser mit dray klinger,"
                "An alte neymachin, a Zinger"
              }
      }
      \hspace #0.2 % distance between verses
      \line { "Eng."
              \column {
                "Play up, Klezmorim, keep to the rhythm"
"Stamp your feet, tap-tap-tap!"
"Let's be merry, lets be gay, ...."
"Lets drink whisky, lets drink wine...."
""
"They are leading the groom to the bride for badeknsﬁ"

"There will be a shortage uf whiskey and cake,"
"The groom is asking for the talis,‘"
"The bride's father pleads poverty!"
""
"Bang on the trays with spoons, forks, knives,"
"Let our joy be ever greater!"
"Let’s end our quarrels with the in-laws,"
"We are poor, but decent and merry!"
""
"After the ceremony, on to the wedding feast."
"Grandmother Sore is about to dance!"
"And our old uncle Yoshe,"
"ls still prettylight on his feet!"
""
"Gifts for the bried are: zinc candelsticks,"
"A tin chimney for the samovar"
"A serrated knife with three blades"
"And an old Singer sewing machine!"
              }
      }
    }
    \hspace #0.1 % distance to right margin
  }
}




%{

Shpilt zhe klezmerlekh, shpill tsum taktv
Tupet mit di ﬁselekh: knak-knak-knak!
Lomir ale freylekh zayn: lomti-romti-rom-tam-‘tam-tam
Trinken bronfnm trinken vayn: lomti-romti-ray-ray!

2. Men ﬁrt dem khosn tsu der kale tsu badekns,
Lekekh, bronfn vet nit klekn.
Un der khosn bet dem tales.
Der mekhutn vert bedales!

3, Klingt in talsn mit lefl,gopl,meser,
Makhl di simkhe nokh ﬁl greser!
Oys beroyges mit mekhutonim
Gute freylekhe kabtsonim!
 
4. Fun der khupe tsu dcr sude. makht a vare!
Ot geyt tantsn di bobe Sore!
Un der alter feter Yoshe,
Varfl mil di ﬁsulekh gor nishkoshe!

5. Shikt der kale tsinene laykhter, trahumes,
Un far dem samovartshick a blekhene trube,
A zeglenem meser mit dray klinger,
An alte neymachin, a Zinger!


Play up, bandsmen, keep to the rhythm
Stamp your feet, tap-tapvtap!
Let’s be merry, let's be gay, lomti-romﬁ-rorn-tz
Let's drink whiskey, let's drink wine, lomti-ror

1. Play up, Klezmorim, keep to the rhythm
Stamp your feet, tap-tap-tap!
Let's be merry, lets be gay, ....
Lets drink whisky, lets drink wine....

2. They are leading the groom to the bride for
badeknsﬁ
There will be a shortage uf whiskey and cake,
The groom is asking for the talis,‘
The bride's father pleads poverty!

3. Bang on the trays with spoons, forks, knives,
Let our joy be ever greater!
Let’s end our quarrels with the in-laws,
We are poor, but decent and merry!

4. After the ceremony, on to the wedding feast.
Grandmother Sore is about to dance!
And our old uncle Yoshe,
ls still prettylight on his feet!

5. Gifts for the bried are: zinc candelsticks,
A tin chimney for the samovar
A serrated knife with three blades
And an old Singer sewing machine!

%}