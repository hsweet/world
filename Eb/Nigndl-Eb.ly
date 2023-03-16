\version "2.18.0"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

melody =  \transpose a e' \relative c'' {
  \clef treble

  \key e\minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    %
    a8 a a g16 fis
    e8 e e8. e16
    e16 a a e a8 g16 fis|
    e8 e e4        %4

    a8 a a g16 fis
    e8 e e8. e16
    e8 a c bes
    a2 ^\markup{ \italic Fine }  \bar ".."  % 8        fine and double bar

    a8 a a8. g16
    e8 e e8. d16
    e8 a c d
    a4. r16 a16|   %12

    a8 a a8. g16
    e8 e4 d8
    e8 a, c d
    a4. a8|        %16

    d8 d  e16(f) e (f)
    d8 c16(b) a4
    d8 d e f16(e)
    d8 d4.        %20

    d8 d  e16(f) e (f)|
    d8 c16(b) a8 a
    d8 d g16(f) e(d)
    a8 a4.    ^\markup{ \italic D.C \italic al \italic Fine }       %24  }
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
  e2:m b2:m e2:m b2:m
  e2:m b2:m e4:m a4:m
  e2:m
  %verse
  e2:m b2:m e4:m a4:m
  e2:m s2 b2:m
  e4:m a4:m e2:m a4:m c4 e2:m a4:m c4
  a2:m s4 c4 a4:m e4:m a4:m c4 e2:m

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






