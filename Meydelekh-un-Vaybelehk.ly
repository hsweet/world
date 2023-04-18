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
  \key d \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \transpose a d \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    a16 a a a a a a8
    d8 cs bf a
    cs8 cs cs e
    d8 cs bf a|

    a8 a a a
    d8 cs bf a
    g8 a bf cs16 bf
    a8 a a a
  }
  \break

  \repeat volta 2{
    \mark \default
    d8. e16 f e d8|
    f8 a e4|
    d16 d d e f e d8|
    cs8 bf a g

    g8-> cs-> cs-> e->
    g8 f16 e d4|
    cs8. bf16 cs8. bf16
    a8 bf a g

    g8-> cs-> cs-> e->
    g8 f16 e d4|
    cs8. bf16 cs8. bf16
    bf8 a r4
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
  d2
  g8:m
  d8*7
  g8:m
  d8*7
  g8:m
  d8*3

  c2:m d2
  %b
  g4*3:m
  d4 %10
  g2:m %11
  d2  %12
  c2*3:m %

  d2
  c2*3:m
  d2

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
    title= "Meydelekh un Veybelekh"
    subtitle=""
    composer= ""
    instrument = "Violin"
    arranger= "Andres Schmitges"
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
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