\version "2.18.0"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }


%melody =  \transpose e d \relative c''' {
  melody = \relative c''{
  \clef treble

  \key cis \minor
  \time 2/4
  %\partial 16*3 a16 d f   %lead in notes

  e8 e e e
  fis8 fis e4|
  gis8 gis gis e
  cis8 cis gis4|
  \break

  a8 a a a
  cis8 cis dis cis
  bis2~
  bis2|  %8
  \break

  e8 e fis e
  cis8 cis a4
  cis8 cis dis cis
  gis8 gis e4 %12
  %d8 d b4  %mirko
  \break

  fis8 ^\markup {\italic{8va violin}}fis gis a
  gis8 fis e dis
  cis2~
  cis2

}


%************************Lyrics Block****************
\addlyrics{
  A- mar- i szi a- mar- i
  A- mar- i cin- i bór- i
  Aj la- la lalala la la la la la
  A- mar- i szi a- mar- i
  A- mar- i cin- i bór- i
  Aj la- la lalala la la la la la

}
\addlyrics{
  Dú -- j, dú -- j, de -- su -- dúj,
  Cs -- umi  -- dau me la -- ko múj
  \repeat unfold 9 {\skip 2}
  Dú -- j, dú -- j, de -- su -- dúj,
  Cs -- umi  -- dau me la -- ko múj

}

\addlyrics{
  La -- ko múj szi ru -- pu -- no,
  Pus -- ke tru -- bu -- lia di -- no
  \repeat unfold 9 {\skip 2}
  La -- ko múj szi ru -- pu -- no,
  Pus -- ke tru -- bu -- lia di -- no
}
\addlyrics {
  Ke -- ren, sav -- o -- rá -- le, drom
  Te khe -- lei o phu -- ro rom.
  \repeat unfold 9 {\skip 2}
  Ke -- ren, sav -- o -- rá -- le, drom
  Te khe -- lei o phu -- ro rom.
}

\addlyrics {
  Phu -- ro rom te kel -- ei -- a
  Bis -- tay -- ek gy -- ás mala -- via
  \repeat unfold 9 {\skip 2}
  Phu -- ro rom te kel -- ei -- a
  Bis -- tay -- ek gy -- ás mala -- via
}
\addlyrics {
  Hoi, _ _ te me -- ra -- u
  Ta na csak -- si -- pó phe -- nau!
  \repeat unfold 9 {\skip 2}
  Hoi, _ _ te me -- ra -- u
  Ta na csak -- si -- pó phe -- nau!
}

harmonies =   \chordmode {
  cis2:m
  s2*3
  fis2:m
  s2
  gis2:7
  s2
  cis2:m
  fis2:m
  a2
  e2
  fis2:m
  gis2:7
  cis2:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff
    \melody
    %\new Staff \accompany
  >>
  \header{
    title= "Amari Szi Amari"
    composer = "Rom"
    arranger= " "
  }

  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
%{

Amari si, amari,
amari cini bori.
Aj, lalalalala la la laj laj.
Amari si, amari,
amari cini bori.
Aj, lalalalala la la laj laj.

Duj, duj, dešuduj,
čumidav me lako muj.
Aj, lalalalala la la laj laj.
Duj, duj, dešuduj,
čumidav me lako muj.
Aj, lalalalala la la laj laj.

Lako muj si rupuno,
puške trubula dino.
Aj, lalalalala la la laj laj.
Lako muj si rupuno,
puške trubula dino.
Aj, lalalalala la la laj laj.

Keren, šavořale, drom,
te khêlel o phuro řom.
Aj, lalalalala la la laj laj.
Phuro řom te khêlela
biš taj jek džes malavla*.
Aj, lalalalala la la laj laj.

Hoi, te merav
te na čačipan** phenav!
Aj, lalalalala la la laj laj.
Hoi, te merav
te na čačipan phenav!
Aj, lalalalala la la laj laj.

Amari si, amari,
amari cini bori.
Aj, lalalalala la la laj laj.
Amari si, amari,
amari cini bori.
Aj, lalalalala la la laj laj.
%}