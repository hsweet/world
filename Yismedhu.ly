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
melody =  \transpose e d \relative c' {
  \transposition bes \clef "treble" \key e \minor \time 2/4 \partial 8
  fis8 \repeat volta 2 {
    % 1
    % 1
    b16 [ c16 b16 c16 ] dis16 [ e16 dis16 c16 ]  % 2
    dis8 [ b8 ] fis8 [ b8 ]  % 3
    dis16 [ e16 dis16 e16 ] fis16 [ g16 fis16 e16 ]  % 4
    fis8 [ dis8 ] b8 [ dis8 ]  % 5
    b16 [ dis16 fis16 a16 ] g16 [ fis16 e16 dis16 ]  % 6
    e16 [ dis16 c16 b16 ] a4  % 7
    gis16 [ a16 b16 c16 ] dis16 [ e16 dis16 c16 ]
  }
  \alternative {
    {
      % 8
      b4. fis8
    }
    {
      % 9
      b2
    }
  } \repeat volta 2 {
    \barNumberCheck #10
    fis'4 fis4  % 11
    fis16 [ dis16 b16 dis16 ] fis4  % 12
    fis16 [ g16 fis16 g16 ] fis8 [ dis8 ]  % 13
    b16 [ dis16 fis16 g16 ] fis4  % 14
    fis16 [ g16 fis16 g16 ] fis8 [ dis8 ]  % 15
    fis16 [ e16 dis16 c16 ] b4  % 16
    fis'16 [ g16 fis16 g16 ] fis8 [ dis8 ]  % 17
    b16 [ dis16 fis16 g16 ] a4  % 18
    a16 [ g16 fis16 e16 ] fis16 [ e16 dis16 c16 ]  % 19
    e16 [ dis16 c16 b16 ] b4 (
  }
  \alternative {
    {

      b4 ) a16 [ b16 c8 ]
    }
    {
      % 21
      b2
    }
  }
  \repeat volta 2 {
    % 22
    % 22
    dis8. [ c16 ] b16 [ a16 b16 c16 ]  % 23
    dis16 [ e16 dis16 c16 ] b4  % 24
    b16 [ c16 dis16 e16 ] fis16 [ g16 fis16 e16 ]  % 25
    fis4 b4  % 26
    a16 [ g16 fis16 e16 ] dis16 [ e16 fis16 g16 ]  % 27
    a16 [ g16 fis16 e16 ] dis4  % 28
    a8 [ b8 ] c8 [ e8 ]  % 29
    dis16 [ e16 dis16 c16 ] b4
  }
}

harmonies = \transpose e d \chordmode {

  s8 b16:5  % 2

  s16*35 a16:m5  % 6

  s16*11 e16:m5  % 8

  s16*7 b4.:5  % 9

  s8*5 b4:5  % 11

  s2*7 a4:m5  % 18

  s2. b4:5

  s1 b8.:5  % 23

  s16*29 a16:m5  % 27

  s16 *11 b4

  a4:m

  s2 b4:5
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
