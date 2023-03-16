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
  \key b \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  \partial 8 b8   %lead in notes

  \repeat volta 2{
    \mark \default
    b8 d d fs fs b b d
    d8 cs cs b fs4. r8
    d'8 cs cs b b a a g
    g8 fs fs e e4 r8 e

    e8 fs fs cs' cs b b as|
    as8 g g fs fs e e d
    d8 e e d fs e d cs
  }
  \alternative {
    { d2 r4 r8 b}
    { d2 r8 fs b cs}
  }
  \break
  \repeat volta 2{
    \mark \default
    d4. cs8 d cs b as
    b4 fs2 r8 fs
    b8 as b as b a g fs
    fs8(g) e2.

    e8 fs fs cs' cs b b as
    as g g fs fs e e d
    d e e d fs e d cs
  }

  \alternative {
    {b2 r8 fs b cs }
    {b2 r4 r8 b }
  }

}
%################################# Lyrics #####################
\addlyrics{ \set stanza = #"1. "
            A kal -- te nakht, a ne -- pl -- di -- ke, fin -- ster um -- e -tum
            Shteyt a yin -- ge -- le far -- troy -- ert un kukt zikh ar -- um
            Fun re -- gn shitst im nor a vant, a kosh -- i -- kl halt er in hant
            Un zay -- ne oy -- gn be -- tn ye -- dn shtum
            _ _
            Ku -- pit -- ye, koyf zhe, koyf zhe pa -- pi -- ro -- sn
            _ Tru -- ke -- ne, fun re -- gn nit far -- go -- sn
            Koyf zhe, bil -- ik be -- ne -- mon --es
            Koyft un hot oyf mir rakh -- mon --es
            Rat -- ev -- et fun hun -- ger mikh at -- sind
            Ku -- pi -- te
}

\addlyrics{ \set stanza = #"2. "
            Ikh hob shoyn nit keyn koy -- ekh mer a -- rum -- tsu -- geyn in gas
            Hun -- ge -- rik un op -- ge -- ri -- sn, fun dem re -- gn nas
            Ikh shlep a -- rum zikh fun ba -- gi -- nen
            Key -- ner git nit tsu far -- di -- nen
            A -- le lak -- hn mak -- hn fun mir _   _ shpas
            _  _ _
            koyf zhe shve -- be -- lekh an -- ti -- kn
            Der -- mit vet ir a yo -- se -- ml der -- kvi -- kn
            Umzist mayn shray -- en un mayn loy -- fn
            Key -- ner vil bay mir nit koy -- fn
            Oys -- geyn vel ikh mu -- zn vi a  _ _ _ _ _hunt
}
%################################# Chords #######################
harmonies = \chordmode {
  s8
  b1*3:m
  e1:m
  fs4*8:7
  b4*2:m fs2:7
  b1*2:m
  %b
  b2:m fs2:7
  b2*3:m
  b2:7
  e1:m
  fs4*8:7
  b4*2:m
  fs2:7
  b1*3:m

}

\score {
  \transpose b a
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Papirosn"
    subtitle=""
    composer= ""
    instrument =""
    arranger= "eng. lyrics Dylan Blackthorn"
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
      \line { "V1."
              \column {
                "My father went to fight and lost his hands in the war"
                "Mother couldn't hardly bear her troubles any more"
                "We buried her about five feet down"
                "Into the frozen ground"
                "It was then that I became a rolling stone"
              }
      }
      \hspace #0.2 % vertical distance between verses
      \line { "V2."
              \column {
                "Sometimes I'll find some crumbs to eat"
                "Down by the hotdog stand"
                "Try to get some sleep on a park bench, if I can"
                "I have to be careful, though"
                "The police will beat me till I bleed"
                "They say I'm what this world don't need"
              }
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line { "Ch1."
              \column {
                "So won't you buy this pack of smokes for a dollar"
                "Or I'll just sell you one for a quarter"
                "Well they ain't broken, not like me"
                "They're not menthols and there filter free"
                "And I just want to get something to eat"
              }
      }
      \hspace #0.2 % distance between verses
      \line { "Ch2."
              \column {
                "Buy my matches, I even got a lighter"
                "Won't you help this orphen kid to stay alive"
                "I will walk these streets while I have muscle"
                "But no one's buying my orphen hustle"
                "Might be I'll just die here like a dog"
              }
      }
    }
    \hspace #0.1 % distance to right margin
  }
}


%{
A kalte nakht, a nepldike, finster umetum
Shteyt a yingele fartroyert un kukt zikh arum
Fun regn shitst im nor a vant, a koshikl halt er in hant
Un zayne oygn betn yedn shtum

Ikh hob shoyn nit keyn koyekh mer arumtsugeyn in gas
Hungerik un opgerisn, fun dem regn nas
Ikh shlep arum zikh fun baginen
Keyner git nit tsu fardinen
Ale lakhn makhn fun mir shpas
{soc}
Kupitye, koyf zhe, koyf zhe papirosn
Trukene, fun regn nit fargosn
Koyf zhe, bilik benemones
Koyft un hot oyf mir rakhmones
Ratevet fun hunger mikh atsind

Kupitye, koyf zhe shvebelekh antikn
Dermit vet ir a yoseml derkvikn
Umzist mayn shrayen un mayn loyfn
Keyner vil bay mir nit koyfn
Oysgeyn vel ikh muzn vi a hint
{eoc}
Ikh hob gehat a shvesterl a kind fun der natur
Mit mir tsuzamen zikh geshlept hot zi a gantse yor
Mit ir geven iz mir fil gringer. Laykhter vern flegt der hinger
Ven ikh fleg a kuk ton nor oyf ir

Mit a mol gevorn iz zi shvakh un zeyer krank
Oyf mayne hent geshtorbn iz zi oyf a gasnbank
Un az ikh hob zi farloyrn, hob ikh alts ongevoryrn
Zol der toyt shoyn kumen oykh tsu mir
*******************************************
My father went to fight and lost his hands in the war
Mother couldn't hardly bear her troubles any more
We burried her about five feet down
Into the frozen ground
It was then that I became a rolling stone

Sometimes I'll find some crumbs to eat
Down by the hotdog stand
Try to get some sleep on a park bench, if I can
I have to be careful, though
The police will beat me till I bleed
They say I'm what this world don't need

So won't you buy this pack of smokes for a dollar
Or I'll just sell you one for a quarter
Well they ain't broken, not like me
They're not menthols and there filter free
And I just want to get something to eat

Buy my matches, I even got a lighter
Won't you help this orphen kid to stay alive
I will walk these streets while I have muscle
But no one's buying my orphen hustle
Might be I'll die here like a dog
%}