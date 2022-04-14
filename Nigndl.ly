\version "2.18.0"
\language "english"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

melody =  \transpose c g \relative c' {
  \clef treble

  \key g\minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    %
    c8 c c bf16 a
    g8 g g8. g16
    g16 c c g c8 bf16 a|
    g8 g g4        %4

    c8 c c bf16 a
    g8 g g8. g16
    g8 c ef df
    c2 ^\markup{ \italic Fine }  \bar ".."  % 8        fine and double bar

    c8 c c8. bf16
    g8 g g8. f16
    g8 c ef f
    c4. r16 c16|   %12

    c8 c c8. bf16
    g8 g4 f8
    g8 c, ef f
    c4. c8|        %16

    f8 f  g16(af) g (af)
    f8 ef16(d) c4
    f8 f g af16(g)
    f8 f4.        %20

    f8 f  g16(af) g (af)|
    f8 ef16(d) c8 c
    f8 f bf16(af) g(f)
    c8 c4.    ^\markup{ \italic D.C \italic al \italic Fine }       %24  }
    %original last line  was f8 f4.

  }

  %\alternative { { }{ } }



}

%************************Lyrics Block****************
\addlyrics{
  Dai- dai dai da- di dai dai dai da
  da- di- di- di da da da- di daia- dai da
  dai- dia dai da- di
  dai dai dai da rai dai dai dai

  Gis mir on, mayn tay- er- e, a be- khe- rl mit vayn,
  Le- kha- im vel ikh trin -kn, ge- zunt zol- stu mir zayn.
  Ge- hert hob ikh der- tse- - ln, az in vayn in al- tn,
  Hot a- leyn der zey- den- nyu a ni- gn- dl ba- hal- tn.
}
\addlyrics{
  \repeat unfold 40 \skip2


  a kal- i- shek mit yayn,
  Far a- le may- ne li- be vel ikh oys- trink- en lekhaim.
  Kh'- hob ge- hert der- tse- - ln, s'iz mes- tam keyn li- gn,
  Az in der tsvey- ter koy \skip4 -se ligt dem zey- dens ni- gn

}

\addlyrics{
  \repeat unfold 40 \skip2


  dem sa- me bes- tn yayn.
  - Lo- mir ta- ke far dem ni- gn oys- trink- en le- khaim.
  Ke -- ner zog -- n, ke -- ner vayzn, dor -- tn muz er li -- gn,
  Afn dno fun dri -- ter koy -- se der ni -- gn she -- be -- ni -- gn
}

harmonies = \chordmode {
  %chorus
  g2:m d2:m g2:m d2:m
  g2:m d2:m g4:m c4:m
  g2:m
  %verse
  g2:m d2:m g4:m c4:m
  g2:m s2 d2:m
  g4:m c4:m g2:m c4:m ef4 g2:m c4:m ef4
  c2:m s4 ef4 c4:m g4:m c4:m ef4 g2:m

}
%{
original_harmonies = \transpose c g \chordmode {
  c2:m g2:m c2:m g2:m
  c2:m g2:m f2:m c2:m
  c2:m g2:m f2:m c2:m
  c2:m g2:m f2:m c2:m

  f4:m g4:m c2:m f4:m
  g4:m f2:m f4:m g4:m
  f4:m c4:m f4:m g4:m c2:m

}
%}

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
    title= "Nigndl"
    subtitle= "Grandfather's Tune"
    arranger = ""

  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}


%{


\markup{
  \column{
    \line{ 3 }
    \line{ Gis mir on, myan tayere,}
    \line{ dem same bestn yayn.}
    \line{ Lomir take far dem nign}
    \line{ oystrinken lekhaim}
    \line{ Kener zong, kener vayz,}
    \line{ dortn muz er lign,}
    \line{ Afn dno fun driter koyse}
    \line{ der nign-shebenin.}
}}


%}






