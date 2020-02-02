

\include "paper16.ly"

global = \notes{
     \key g \minor
     \time 4/4
     \property Voice.TextScript \set #'font-style = #'italic

}

clarinet = \context Staff \notes\transpose c a \relative c' {
     \context Voice=i
     d4 g8 a bes4 bes8 c |
     d8 c bes a g2 |
     c4 c8 d ees4 c |
     g4 a8 bes g2 |

     fis8 e fis g a gis a bes |
     a4 bes8 c d4 c |
     bes4 aes ges bes |
     aes ges f aes |

     f8 g a bes a bes c des |
     f4 ees des c |
     bes8 a bes c des c des ees |
     f ges ees f des ees c des |

     d cis d ees d c bes a |
     a gis a bes g a bes c |
     d4 d,4 d'4 d,4 |
     bes'4 a g8 a bes a |

     % Do what the fiddle just did
     g8 fis g a bes4 g |
     d' d, g8 a bes a |
     g4 f ees f |
     g f8 ees d e fis g |

     a4 bes c a |
     g8 fis g a bes c d c |
     bes4 c bes8 aes ges4 |
     f8 ges aes bes c aes bes c |

     bes4 c8 d ees4 f |
     ees8 d c bes a g f4 |
     ees f ges aes |
     bes des c bes |

     a g fis e |
     d e fis2 |
     g4 g8 a bes c bes a |
     g4 fis g2 |

}

fiddle = \context Staff \notes\transpose c a \relative c' {
     \context Voice=ii
     g'8 fis g a bes4 g |
     d' d, g8 a bes a |
     g4 f ees f |
     g f8 ees d e fis g |

     a4 bes c a |
     g8 fis g a bes c d c |
     bes4 c bes8 aes ges4 |
     f8 ges aes bes c aes bes c |

     bes4 c8 d ees4 f |
     ees8 d c bes a g f4 |
     ees f ges aes |
     bes des c bes |

     a g fis e |
     d e fis2 |
     g4 g8 a bes c bes a |
     g4 fis g8 f ees4 |

     % Do what the clarinet just did
     d4 g8 a bes4 bes8 c |
     d8 c bes a g2 |
     c4 c8 d ees4 c |
     g4 a8 bes g2 |

     fis8 e fis g a gis a bes |
     a4 bes8 c d4 c |
     bes4 aes ges bes |
     aes ges f aes |

     f8 g a bes a bes c des |
     f4 ees des c |
     bes8 a bes c des c des ees |
     f ges ees f des ees c des |

     d cis d ees d c bes a |
     a gis a bes g a bes c |
     d4 d,4 d'4 d,4 |
     bes'4 a g2 |

}

pianoright = \context Staff \notes\transpose c a \relative c' {
     \context Voice=iii
     d'8 c bes d c bes a c |
     bes a g bes a4 bes |
     c ees d8 c bes a |
     g fis g a bes a bes c |

     d ees d c bes c bes4 |
     a bes8 c d c bes aes |
     ges f ges aes bes aes bes c |
     des c des ees f ees f ges |

     f ees des c c des bes c |
     a c ees ges f4 des |
     bes f' des bes |
     ges8 bes des bes ges bes ees bes |

     fis a c a fis a d a |
     fis a ees' a, d c bes c |
     bes a g fis g a bes c |
     d ees d c d c bes c |

     d c bes a g d' bes d |
     ees d c a bes c d c |
     d c bes a bes4 a8 bes |
     g bes c4 ees d8 c |

     d cis d ees f ees d cis |

     %d e fis e d ees fis, ees' |
     d ees f ees d4 c |

     d8 c bes c d c bes aes |
     aes2 des4 c |

     c8 bes a g f4 f8 g |
     a bes g a f g a4 |
     bes4 des f8 ees des c |
     ges aes bes c des c bes aes |

     fis a d a fis a c a |
     fis e fis g a c bes a |
     bes a bes c bes a g a |
     bes c d c < g2 bes > |

}

pianoleft = \context Staff \notes\transpose c a \relative c {
     \context Voice=iv
     % 1 - g minor
     < d4 g > < d4 bes' > < d4 g > < d4 bes' > |
     < d4 g > < d4 bes' > < d4 g > < d4 bes' > |
     % 4 - c minor
     < c4 ees >  < c g' >  < c ees >  < c g' > |
     < c4 ees > < c g' > < c ees > < c g'> |
     % 5 - d major
     < d4 fis >  < d a' >  < d fis >  < d a' > |
     < d4 fis > < d a' > < d fis > < d a' > |
     % 6mi - e-flat minor, flats: b e a d g
     < bes4 ees > < bes ges' > < bes ees > < bes ges' > |
     < bes4 ees > < bes ges' > < bes ees > < bes ges' > |

     % 7 - f major
     < c4 f >  < c a' >  < c f >  < c a' > |
     < c4 f > < c a' > < c f > < c a' > |
     % 6mi - e-flat minor
     < bes4 ees > < bes ges' > < bes ees > < bes ges' > |
     < bes4 ees > < bes ges' > < bes ees > < bes ges' > |
     % 5 - d major
     < d4 fis >  < d a' >  < d fis >  < d a' > |
     < d4 fis > < d a' > < d fis > < d a' > |
     % 1 - g minor
     < d4 g >  < d bes' >  < d g >  < d bes' > |
     < d4 g > < d bes' > < d g > < d bes'  > |

     % 1 - g minor
     < d4 g >  < d bes' >  < d g >  < d bes' > |
     < d4 g > < d bes' > < d g > < d bes' > |
     % 4 - c minor
     < c4 ees >  < c g' >  < c ees >  < c g' > |
     < c4 ees > < c g' > < c ees > < c g' > |
     % 5 - d major
     < d4 fis >  < d a' >  < d fis >  < d a' > |
     < d4 fis > < d a' > < d fis > < d a' > |
     % 6mi - e-flat minor
     < bes4 ees > < bes ges' > < bes ees > < bes ges' > |
     < bes4 ees > < bes ges' > < bes ees > < bes ges' > |

     % 7 - f major
     < c4 f >  < c a' >  < c f >  < c a' > |
     < c4 f > < c a' > < c f > < c a' > |
     % 6mi - e-flat minor
     < bes4 ees > < bes ges' > < bes ees > < bes ges' > |
     < bes4 ees > < bes ges' > < bes ees > < bes ges' > |
     % 5 - d major
     < d4 fis >  < d a' >  < d fis >  < d a' > |
     < d4 fis > < d a' > < d fis > < d a' > |
     % 1 - g minor
     < d4 g >  < d bes' >  < d g >  < d bes' > |
     < d4 g bes > < d fis a > < d2 g  bes >

}

\score {
     \notes <
        \context Staff = clarinet <
            \property Staff.instrument = "Clarinet"
            \property Staff.midiInstrument = "clarinet"
            %\property Staff.midiInstrument = "Ef Horn"
            \global
            \clarinet
        >
        \context Staff = fiddle <
            \property Staff.instrument = "Fiddle"
            \property Staff.midiInstrument = "viola"
            %\property Staff.midiInstrument = "Ef Horn"
            \global
            \fiddle
        >
        \context GrandStaff <
            \context Staff = upper <
                \property Staff.instrument = "Piano"
                \property Staff.midiInstrument = "acoustic grand"
                \global
                \pianoright
            >
            \context Staff = lower <
                \property Staff.midiInstrument = "acoustic grand"
                \global
                \clef "bass"
                \pianoleft
            >
        >
     >
     \paper{
        papersize = "letter"
     }
     \midi{
        \tempo 4 = 180
        %\tempo 4 = 60
     }
     \header {
        title = "Tantze Goyisheklezmer"
        composer = "Will Ware"
     }

}


