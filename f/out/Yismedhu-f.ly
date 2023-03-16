\version "2.18.0"
\language "english"
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
melody =  \transpose b, a, \relative c' {
  \transposition f \clef "treble" \key b \minor \time 2/4 \partial 8
  cs8 \repeat volta 2 {
    % 1
    % 1
    fs16 [ g16 fs16 g16 ] as16 [ b16 as16 g16 ]  % 2
    as8 [ fs8 ] cs8 [ fs8 ]  % 3
    as16 [ b16 as16 b16 ] cs16 [ d16 cs16 b16 ]  % 4
    cs8 [ as8 ] fs8 [ as8 ]  % 5
    fs16 [ as16 cs16 e16 ] d16 [ cs16 b16 as16 ]  % 6
    b16 [ as16 g16 fs16 ] e4  % 7
    ds16 [ e16 fs16 g16 ] as16 [ b16 as16 g16 ]
  }
  \alternative {
    {
      % 8
      fs4. cs8
    }
    {
      % 9
      fs2
    }
  } \repeat volta 2 {
    \barNumberCheck #10
    cs'4 cs4  % 11
    cs16 [ as16 fs16 as16 ] cs4  % 12
    cs16 [ d16 cs16 d16 ] cs8 [ as8 ]  % 13
    fs16 [ as16 cs16 d16 ] cs4  % 14
    cs16 [ d16 cs16 d16 ] cs8 [ as8 ]  % 15
    cs16 [ b16 as16 g16 ] fs4  % 16
    cs'16 [ d16 cs16 d16 ] cs8 [ as8 ]  % 17
    fs16 [ as16 cs16 d16 ] e4  % 18
    e16 [ d16 cs16 b16 ] cs16 [ b16 as16 g16 ]  % 19
    b16 [ as16 g16 fs16 ] fs4 (
  }
  \alternative {
    {

      fs4 ) e16 [ fs16 g8 ]
    }
    {
      % 21
      fs2
    }
  }
  \repeat volta 2 {
    % 22
    % 22
    as8. [ g16 ] fs16 [ e16 fs16 g16 ]  % 23
    as16 [ b16 as16 g16 ] fs4  % 24
    fs16 [ g16 as16 b16 ] cs16 [ d16 cs16 b16 ]  % 25
    cs4 fs4  % 26
    e16 [ d16 cs16 b16 ] as16 [ b16 cs16 d16 ]  % 27
    e16 [ d16 cs16 b16 ] as4  % 28
    e8 [ fs8 ] g8 [ b8 ]  % 29
    as16 [ b16 as16 g16 ] fs4
  }
}

harmonies = \transpose b, a, \chordmode {

  s8 fs16:5  % 2

  s16*35 e16:m5  % 6

  s16*11 b16:m5  % 8

  s16*7 fs4.:5  % 9

  s8*5 fs4:5  % 11

  s2*7 e4:m5  % 18

  s2. fs4:5

  s1 fs8.:5  % 23

  s16*29 e16:m5  % 27

  s16 *11 fs4

  e4:m

  s2 fs4:5
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
