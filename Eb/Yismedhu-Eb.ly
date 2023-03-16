\version "2.18.0"
% automatically converted from Yismedhu.xml
%was in Clarinet key before \transpose e d

\header {

  tagline = ""
  encodingdate = "2010-01-04"
  composer = ""
  title = "Yismedhu"
  arranger = ""
}
\paper{
  tagline = ##f
  %print-all-headers = ##t
  #(set-paper-size "letter")


}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }
melody =  \transpose cis' b \relative c' {
  \transposition g \clef "treble" \key cis \minor \time 2/4 \partial 8
  dis8 \repeat volta 2 {
    % 1
    % 1
    gis16 [ a16 gis16 a16 ] bis16 [ cis16 bis16 a16 ]  % 2
    bis8 [ gis8 ] dis8 [ gis8 ]  % 3
    bis16 [ cis16 bis16 cis16 ] dis16 [ e16 dis16 cis16 ]  % 4
    dis8 [ bis8 ] gis8 [ bis8 ]  % 5
    gis16 [ bis16 dis16 fis16 ] e16 [ dis16 cis16 bis16 ]  % 6
    cis16 [ bis16 a16 gis16 ] fis4  % 7
    eis16 [ fis16 gis16 a16 ] bis16 [ cis16 bis16 a16 ]
  }
  \alternative {
    {
      % 8
      gis4. dis8
    }
    {
      % 9
      gis2
    }
  } \repeat volta 2 {
    \barNumberCheck #10
    dis'4 dis4  % 11
    dis16 [ bis16 gis16 bis16 ] dis4  % 12
    dis16 [ e16 dis16 e16 ] dis8 [ bis8 ]  % 13
    gis16 [ bis16 dis16 e16 ] dis4  % 14
    dis16 [ e16 dis16 e16 ] dis8 [ bis8 ]  % 15
    dis16 [ cis16 bis16 a16 ] gis4  % 16
    dis'16 [ e16 dis16 e16 ] dis8 [ bis8 ]  % 17
    gis16 [ bis16 dis16 e16 ] fis4  % 18
    fis16 [ e16 dis16 cis16 ] dis16 [ cis16 bis16 a16 ]  % 19
    cis16 [ bis16 a16 gis16 ] gis4 (
  }
  \alternative {
    {

      gis4 ) fis16 [ gis16 a8 ]
    }
    {
      % 21
      gis2
    }
  }
  \repeat volta 2 {
    % 22
    % 22
    bis8. [ a16 ] gis16 [ fis16 gis16 a16 ]  % 23
    bis16 [ cis16 bis16 a16 ] gis4  % 24
    gis16 [ a16 bis16 cis16 ] dis16 [ e16 dis16 cis16 ]  % 25
    dis4 gis4  % 26
    fis16 [ e16 dis16 cis16 ] bis16 [ cis16 dis16 e16 ]  % 27
    fis16 [ e16 dis16 cis16 ] bis4  % 28
    fis8 [ gis8 ] a8 [ cis8 ]  % 29
    bis16 [ cis16 bis16 a16 ] gis4
  }
}

harmonies = \transpose cis' b \chordmode {

  s8 gis16:5  % 2

  s16*35 fis16:m5  % 6

  s16*11 cis16:m5  % 8

  s16*7 gis4.:5  % 9

  s8*5 gis4:5  % 11

  s2*7 fis4:m5  % 18

  s2. gis4:5

  s1 gis8.:5  % 23

  s16*29 fis16:m5  % 27

  s16 *11 gis4

  fis4:m

  s2 gis4:5
}


<<
  \new ChordNames {
    \set chordChanges = ##t
    \harmonies
  }
  \new Staff
  \melody
>>
% The score definition

%{
 Those who keep the Sabbath and call it a delight
shall rejoice in Your kingdom. All who hallow the
seventh day shall be gladdened by Your goodness.
This day is Israel's festival of the spirit, sanctified
and blessed by You, the most precious of days,a
symbol of the joy of creation.
%}
