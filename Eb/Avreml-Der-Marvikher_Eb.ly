
\version "2.18.0"
\include "english.ly"
\paper{
  %tagline = #ff
  %print-all-headers = ##t
  %#(set-paper-size "letter")
}

\paper {
  %obsolete-between-system-padding = #0.1  system-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)  score-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)
  %obsolete-between-system-space = #0.1  system-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)  score-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
  tagline = ##f
}

date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ \date }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key d\minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################

%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
 \partial 4*1 a8 bf  %lead in notes
  a2
  cs8 d cs bf
  bf8 a4.~
  a4. r8

  cs8 d e4|
  f8 e f d
  e8 cs4.~
  cs4 r8 a

  cs8 d cs a
  cs d e f
  e2~
  e4. r8

  a,8 bf a4
  cs8 d cs bf
  bf8 a4.~
  a4. r8

  cs8 d e4
  f8 e f d
  e8 cs4.~
  cs4 r8 cs

  d8 g, a bf
  cs8 d bf cs
  a2~ \bar"|.|"
  a8 a^Chorus d e

  f4 e8 d
  f8 f e d
  cs8 e4.~
  e8 a, e' f

  g4 f8 e
  g8 g f e
  g8 f4.~
  f8 d f g

  a4 g8 f
  a8 g bf a
  g2~
  g8 d e f

  g4 f8 e
  f8 e f g
  a8 r f r
  e8 a, d e

  f4 e8 d
  f8 f e d
  cs8 e4.~
  e8 a, e' f

  g4 f8 e
  g8 g f e
  g8 f4.~
  f8 d f g

  a4 g8 f
  a8 g bf a
  g2~
  g8 d e f

  g4 a
  g8 f e f
  d2
}
%################################# Lyrics #####################
\addlyrics{ \set stanza = #"1. "
            On a heym bin ikh yung ge -- bli --bn
            S'hot di noyt mikh  -- a -- roys ge -- tri -- bn
            Ven ikh hob nokh keyn dray -- tsn yor ge -- hat
            In der fremd, vayt fun ma -- mes oy -- gn
            Ot in shmuts mikh di gas der -- tsoy -- gn
            Ge -- vo -- rn iz fun mir a voy -- ler yat.

            Ikh bin Av -- rey -- ml der feyk -- ster mar -- vi -- kher
            _ A groy -- ser kin -- st -- ler, kh'ar -- bet laykht un zi -- kher
            Dos ersh -- te mol, kh'vel's ge -- den -- ken bi -- zn toyt
            A -- rayn in tfi -- se far lak' -- khen -- en a broyt, oy, oy _
            Kh'for nisht oyf mar -- kn, vi ye -- ne pros -- te ya -- tn
            Kh'tsup nor bay kar -- ge, shmut -- si -- ke mag -- na -- tn
            Kh'bin zikh me -- kha -- ye ven kh'tap a -- za mag -- nat
            Ikh bin Av -- rey -- ml, gor a voy -- ler yat.
}
\addlyrics{ \set stanza = #"2. "
            In der fremd, nisht ge -- hat tsum le -- bn
            Ge -- betn broyt, an-or -- em -- er flegt nokh gebn
            Nor ye -- ne layt vos zen -- en tom -- id zat
            Fle -- gn oft tray -- bn mikh mit tso -- rn
            S'vakst a ganev, s'iz me -- kuy -- em ge -- vorn
            A g -- anef bin ikh, nor a voy -- ler yat.

            \repeat unfold 24 {\skip 2}

            A yat a kley -- ner ar -- ayn in kut -- she -- ment
            A -- roys a ma -- zik, a zel -- ten -- er tal -- ent, oy, _
            \repeat unfold 24 {\skip 2}



            Kh'hob lib a men -- tshn, a mil -- dn a nash -- brat
            Ikh bin Av -- rey -- ml gor a voy -- ler yat.
}
%################################# Chords #######################
harmonies = \chordmode {
  a4*3

  d2:m
  a2*3
  d2:m
  a2*2
  d2*2:m
  a2*3
  d2
  a2*3
  d2:m
  a2*2
  g2*2:m
  a2
  %chorus
  a2
  d2*2:m
  a2*2
  g2*2:m
  d2*4:m
  g2*4:m
  a2*2
  d2*2:m
  a2*2
  g2*2:m
  d2*4:m
  g2*2:m
  a2*2
  d2:m
}

\score {\transpose c a
  <<
    \new ChordNames {
      \set chordChanges = ##f
      %\transpose a d
      \harmonies
    }
    \new Staff   %\transpose a d
    \melody
  >>
  \header{
    title= "Avreml Der Marvikher"
    %subtitle="Abe the Pickpocket"
    composer= ""
    instrument =""
    arranger= ""
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
      \line { "Verse."
              \column {
                "Shoyn nisht lang vet dos shpil gedoyern "
                "Krank fun klep, gift fun tfise moyern "
                "Nor eyn bakoshe, kh'volt azoy gevolt "
                "Nokh mayn toyt in a tog a tribn "
                "Zol oyf mayn matseyve shteyn geshribn "
                "Mit oysyes groyse un fun gold"
              }
      }
      \hspace #0.2 % vertical distance between verses
      \line { ""
              \column {
                ""
              }
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line { "Ch."
              \column {
                "Do ligt Avreyml der feykster marvikher "
                "A mentsh a groyser geven volt fun im zikher "
                "A mentsh a fayner mit harts, mit a gefil "
                "A mentsh a reyner vi got aleyn nor vil, oy, oy "
                "Ven iber im volt gevakht a mames oygn "
                "Ven s'volt di fintstere gas im nisht dertsoygn "
                "Ven nokh als kind er a tatn volt gehat "
                "Do ligt Avreyml, yener voyler yat. "
              }
      }
      \hspace #0.2 % distance between verses
      \line { ""
              \column {
                ""
              }
      }
    }
    \hspace #0.1 % distance to right margin
  }
}



%{
on a heym bin ikh yung geblibn
s'hot di noyt mikh aroys getribn
ven ikh hob nokh keyn draytsn yor gehat
in der fremd, vayt fun mames oygn
hot in shmuts mikh di gas dertsoygn
gevorn iz fun mir a voyler yat.

ikh bin Avreyml der feykster marvikher
a groyser kinstler, kh'arbet laykht un zikher
dos ershte mol, kh'vel's gedenken bizn toyt
arayn in tfise far lak'khenen a broyt, oy, oy
kh'for nisht oyf markn, vi yene proste yatn
kh'tsup nor bay karge, shmutsike magnatn
kh'bin zikh mekhaye ven kh'tap aza magnat
ikh bin Avreyml, gor a voyler yat.

in der fremd, nisht gehat tsum lebn
gebetn broyt, an oremer flegt nokh gebn
nor yene layt vos zenen tomid zat
flegn oft traybn mikh mit tsorn
s'vakst a ganev, s'iz mekuyem gevorn
a ganef bin ikh, nor a voyler yat.

ikh bin Avreyml der feykster marvikher
a groyser kinstler, kh'arbet laykht un zikher
a yat a kleyner arayn in kutshement
aroys a mazik, a zeltener talent, oy, oy
kh'for nisht oyf markn, vi yene proste yatn
kh'tsup nor bay karge, shmutsike magnatn
kh'hob lib a mentshn, a mildn a nash-brat
ikh bin Avreyml gor a voyler yat.

shoyn nisht lang vet dos shpil gedoyern
krank fun klep, gift fun tfise moyern
nor eyn bakoshe, kh'volt azoy gevolt
nokh mayn toyt in a tog a tribn
zol oyf mayn matseyve shteyn geshribn
mit oysyes groyse un fun gold

do ligt Avreyml der feykster marvikher
a mentsh a groyser geven volt fun im zikher
a mentsh a fayner mit harts, mit a gefil
a mentsh a reyner vi got aleyn nor vil, oy, oy
ven iber im volt gevakht a mames oygn
ven s'volt di fintstere gas im nisht dertsoygn
ven nokh als kind er a tatn volt gehat
do ligt Avreyml, yener voyler yat.

%}