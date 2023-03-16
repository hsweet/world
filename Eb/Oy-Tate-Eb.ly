
\version "2.18.0"
% automatically converted from Oy Tate.xml

\header {

  title = "Oy, Tate"
}
\paper{
  tagline = ##f
  #print-all-headers  ##t
  #(set-paper-size "letter")
}
\layout {
  \context {
    \Score
    autoBeaming = ##f
  }
}

date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }
melody =  \relative c'' {
  \set Score.markFormatter = #format-mark-box-alphabet

  \clef "treble" \key e \minor \time 2/4 
  \repeat volta 2 {
    % 1
    \mark \default
    dis8. [ c16 ] b8 [ b8 ]  % 2
    c16 [ b16 a16 c16 ] b4  % 3
    b16 [ c16 dis16 e16 ] fis16 [ g16 fis16 e16 ]  % 4
    fis8. [ e16 ] dis8. [ c16 ]  % 5
    dis8. [ c16 ] b8 [ b8 ]  % 6
    c16 [ b16 a16 c16 ] b4  % 7
    % 7
    b16 [ c16 dis16 e16 ] fis16 [ e16 dis16 c16 ]  % 8
    % 8
    dis16 [ c16 ] b4.
  }
  \break
  \repeat volta 2 {
    \mark \default
    % 9
    % 9
    dis16 [ e16 fis8 ] r8 e8
    dis16 [ e16 dis16 c16 ] b4  % 11
    % 11
    dis16 [ e16 dis16 e16 ] g8 [ fis16 e16 ]  % 12
    % 12
    dis16 [ e16 fis8. ] s8.  % 13
    dis16 [ e16 fis8 ] r8 e8  % 14
    dis16 [ e16 dis16 c16 ] b4  % 15
    % 15
    a16 [ c16 c16 a16 ] fis'16 [ e16 dis16 c16 ]  % 16
    % 16
    dis8 [ c8 ] b4
  }
  \break
  \repeat volta 2 {
    \mark \default 
    % 17
    % 17
    e16 [ e16 e16 e16 ] g8 [ fis16 e16 ]  % 18
    % 18
    fis16 [ fis16 fis16 fis16 ] fis8 [ c8 ]  % 19
    b16 [ b16 b16 b16 ] e8 [ dis16 c16 ]
    dis16 [ dis16 dis16 dis16 ] dis4  % 21
    % 21
    a16 [ a16 a16 a16 ] c8 [ b16 a16 ]  % 22
    c16 [ c16 c16 c16 ] e8 [ dis16 c16 ]  % 23
    dis16 [ e16 fis16 e16 ] dis16 [ c16 dis16 c16 ]  % 24
    % 24
    b2
  }
  \break
  \repeat volta 2 {
    \mark \default
    % 25
    % 25
    e16 [ fis16 g8 ] g8 [ g8 ]  % 26
    % 26
    a8 [ a8 ] g4  % 27
    % 27
    a4 e8 [ e8 ]  % 28
    % 28
    g16 [ a16 g16 fis16 ] e4  % 29
    % 29
    dis16 [ e16 ] fis4 a8
    a16 [ g16 fis16 e16 ] fis8. [ e16 ]  % 31
    dis16 [ e16 fis16 e16 ] dis16 [ c16 dis16 c16 ]  % 32
    % 32
    b2
  }
}
\addlyrics {
 \repeat unfold 50  {\skip4}   Oy Ta-te!
}

harmonies =  \chordmode {
  % 1
  b8.:5  % 2
  % 3
  % 4
  % 5
  % 6
  % 7
  % 7
  s16*45 a16:m5  % 8
  % 8
  s16*7 b16:5  % 9
  % 9
  s16*7 b16:5
  % 11
  % 11
  s16*15 e16:m5  % 12
  % 12
  s16*7 b16:5  % 13
  % 14
  % 15
  % 15
  s16*23 a16:m5  % 16
  % 16
  s16*7 b8:5  % 17
  % 17
  s4. e16:m5  % 18
  % 18
  s16*7 b16:5  % 19

  % 21
  % 21
  s16*23 a16:m5  % 22
  % 23
  % 24
  % 24
  s16*23 b2:5  % 25
  % 25
  e16:m5  % 26
  % 26
  s16*7 a8:m5 s8 e4:m5  % 27
  % 27
  a4:m5  % 28
  % 28
  s4 e16:m5  % 29
  % 29
  s16*7 b16:5
  % 31
  % 32
  % 32
  s16*23 b2:5
}

% The score definition

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff
    \melody
  >>

  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
