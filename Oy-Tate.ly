\language "english"

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
melody =  \relative c' {
  \set Score.markFormatter = #format-mark-box-alphabet

  \clef "treble" \key g \minor \time 2/4 
  \repeat volta 2 {
    % 1
    \mark \default
    fs8. [ ef16 ] d8 [ d8 ]  % 2
    ef16 [ d16 c16 ef16 ] d4  % 3
    d16 [ ef16 fs16 g16 ] a16 [ bf16 a16 g16 ]  % 4
    a8. [ g16 ] fs8. [ ef16 ]  % 5
    fs8. [ ef16 ] d8 [ d8 ]  % 6
    ef16 [ d16 c16 ef16 ] d4  % 7
    % 7
    d16 [ ef16 fs16 g16 ] a16 [ g16 fs16 ef16 ]  % 8
    % 8
    fs16 [ ef16 ] d4.
  }
  \break
  \repeat volta 2 {
    \mark \default
    % 9
    % 9
    fs16 [ g16 a8 ] r8 g8
    fs16 [ g16 fs16 ef16 ] d4  % 11
    % 11
    fs16 [ g16 fs16 g16 ] bf8 [ a16 g16 ]  % 12
    % 12
    fs16 [ g16 a8. ] s8.  % 13
    fs16 [ g16 a8 ] r8 g8  % 14
    fs16 [ g16 fs16 ef16 ] d4  % 15
    % 15
    c16 [ ef16 ef16 c16 ] a'16 [ g16 fs16 ef16 ]  % 16
    % 16
    fs8 [ ef8 ] d4
  }
  \break
  \repeat volta 2 {
    \mark \default 
    % 17
    % 17
    g16 [ g16 g16 g16 ] bf8 [ a16 g16 ]  % 18
    % 18
    a16 [ a16 a16 a16 ] a8 [ ef8 ]  % 19
    d16 [ d16 d16 d16 ] g8 [ fs16 ef16 ]
    fs16 [ fs16 fs16 fs16 ] fs4  % 21
    % 21
    c16 [ c16 c16 c16 ] ef8 [ d16 c16 ]  % 22
    ef16 [ ef16 ef16 ef16 ] g8 [ fs16 ef16 ]  % 23
    fs16 [ g16 a16 g16 ] fs16 [ ef16 fs16 ef16 ]  % 24
    % 24
    d2
  }
  \break
  \repeat volta 2 {
    \mark \default
    % 25
    % 25
    g16 [ a16 bf8 ] bf8 [ bf8 ]  % 26
    % 26
    c8 [ c8 ] bf4  % 27
    % 27
    c4 g8 [ g8 ]  % 28
    % 28
    bf16 [ c16 bf16 a16 ] g4  % 29
    % 29
    fs16 [ g16 ] a4 c8
    c16 [ bf16 a16 g16 ] a8. [ g16 ]  % 31
    fs16 [ g16 a16 g16 ] fs16 [ ef16 fs16 ef16 ]  % 32
    % 32
    d2
  }
}
\addlyrics {
 \repeat unfold 50  {\skip4}   Oy Ta-te!
}

harmonies =  \chordmode {
  % 1
  d8.:5  % 2
  % 3
  % 4
  % 5
  % 6
  % 7
  % 7
  s16*45 c16:m5  % 8
  % 8
  s16*7 d16:5  % 9
  % 9
  s16*7 d16:5
  % 11
  % 11
  s16*15 g16:m5  % 12
  % 12
  s16*7 d16:5  % 13
  % 14
  % 15
  % 15
  s16*23 c16:m5  % 16
  % 16
  s16*7 d8:5  % 17
  % 17
  s4. g16:m5  % 18
  % 18
  s16*7 d16:5  % 19

  % 21
  % 21
  s16*23 c16:m5  % 22
  % 23
  % 24
  % 24
  s16*23 d2:5  % 25
  % 25
  g16:m5  % 26
  % 26
  s16*7 c8:m5 s8 g4:m5  % 27
  % 27
  c4:m5  % 28
  % 28
  s4 g16:m5  % 29
  % 29
  s16*7 d16:5
  % 31
  % 32
  % 32
  s16*23 d2:5
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
