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
melody =  \relative c'' {
  \set Score.markFormatter = #format-mark-box-alphabet

  \clef "treble" \key d \minor \time 2/4
  \repeat volta 2 {
    % 1
    \mark \default
    cs8. [ bf16 ] a8 [ a8 ]  % 2
    bf16 [ a16 g16 bf16 ] a4  % 3
    a16 [ bf16 cs16 d16 ] e16 [ f16 e16 d16 ]  % 4
    e8. [ d16 ] cs8. [ bf16 ]  % 5
    cs8. [ bf16 ] a8 [ a8 ]  % 6
    bf16 [ a16 g16 bf16 ] a4  % 7
    % 7
    a16 [ bf16 cs16 d16 ] e16 [ d16 cs16 bf16 ]  % 8
    % 8
    cs16 [ bf16 ] a4.
  }
  \break
  \repeat volta 2 {
    \mark \default
    % 9
    % 9
    cs16 [ d16 e8 ] r8 d8
    cs16 [ d16 cs16 bf16 ] a4  % 11
    % 11
    cs16 [ d16 cs16 d16 ] f8 [ e16 d16 ]  % 12
    % 12
    cs16 [ d16 e8. ] s8.  % 13
    cs16 [ d16 e8 ] r8 d8  % 14
    cs16 [ d16 cs16 bf16 ] a4  % 15
    % 15
    g16 [ bf16 bf16 g16 ] e'16 [ d16 cs16 bf16 ]  % 16
    % 16
    cs8 [ bf8 ] a4
  }
  \break
  \repeat volta 2 {
    \mark \default
    % 17
    % 17
    d16 [ d16 d16 d16 ] f8 [ e16 d16 ]  % 18
    % 18
    e16 [ e16 e16 e16 ] e8 [ bf8 ]  % 19
    a16 [ a16 a16 a16 ] d8 [ cs16 bf16 ]
    cs16 [ cs16 cs16 cs16 ] cs4  % 21
    % 21
    g16 [ g16 g16 g16 ] bf8 [ a16 g16 ]  % 22
    bf16 [ bf16 bf16 bf16 ] d8 [ cs16 bf16 ]  % 23
    cs16 [ d16 e16 d16 ] cs16 [ bf16 cs16 bf16 ]  % 24
    % 24
    a2
  }
  \break
  \repeat volta 2 {
    \mark \default
    % 25
    % 25
    d16 [ e16 f8 ] f8 [ f8 ]  % 26
    % 26
    g8 [ g8 ] f4  % 27
    % 27
    g4 d8 [ d8 ]  % 28
    % 28
    f16 [ g16 f16 e16 ] d4  % 29
    % 29
    cs16 [ d16 ] e4 g8
    g16 [ f16 e16 d16 ] e8. [ d16 ]  % 31
    cs16 [ d16 e16 d16 ] cs16 [ bf16 cs16 bf16 ]  % 32
    % 32
    a2
  }
}
\addlyrics {
 \repeat unfold 50  {\skip4}   Oy Ta-te!
}

harmonies =  \chordmode {
  % 1
  a8.:5  % 2
  % 3
  % 4
  % 5
  % 6
  % 7
  % 7
  s16*45 g16:m5  % 8
  % 8
  s16*7 a16:5  % 9
  % 9
  s16*7 a16:5
  % 11
  % 11
  s16*15 d16:m5  % 12
  % 12
  s16*7 a16:5  % 13
  % 14
  % 15
  % 15
  s16*23 g16:m5  % 16
  % 16
  s16*7 a8:5  % 17
  % 17
  s4. d16:m5  % 18
  % 18
  s16*7 a16:5  % 19

  % 21
  % 21
  s16*23 g16:m5  % 22
  % 23
  % 24
  % 24
  s16*23 a2:5  % 25
  % 25
  d16:m5  % 26
  % 26
  s16*7 g8:m5 s8 d4:m5  % 27
  % 27
  g4:m5  % 28
  % 28
  s4 d16:m5  % 29
  % 29
  s16*7 a16:5
  % 31
  % 32
  % 32
  s16*23 a2:5
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
