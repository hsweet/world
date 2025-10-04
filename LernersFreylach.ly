\version "2.18.0"
\include "english.ly"
%\pointAndClickOff
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}

date = #(strftime "%d-%m-%Y" (localtime (current-time)))
\markup{ \italic{ " Updated " \date } }

%\markup{ Source filename: KMDMP 01-36-946 - Lerners Frailach C leadsheet - Eric Rangell.ly }

global = {
  \clef treble
  \key g \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}


%################################# Music Blocks ########################

sopmusicA = { 
\mark \default
g'8. a'16 g'8. a'16 g'8 a'8 
g'2 d'4
g'8. a'16 g'8. a'16 g'8 a' 
g'2 d'4 
bf'8. c''16 bf'8. c''16 bf'8 c''8 
bf'2 g'4
bf'8. c''16 bf'8. c''16 bf'8 c''8 
bf'2 g'4
d''4 d''4. c''8
d''8 d''8 c''4. r8
bf'8. a'16 g'8 a' bf' c''
g'4 r4 r8 g'8 
}

sopmusicB = {
\mark \default
bf'8. d''16 c''4 c''4
g'8. g'16 bf'2
bf'8. d''16 c''4 g''8. g'16
g'8. g'16 bf'2
bf'16 bf'8. f'2 
\times 2/3 {bf'8 a'8 bf'8} c''2
}

sopmusicBA = {
bf'8. a'16 g'8 a' bf' c'' 
d''16 d''8. bf'4 g'
}

sopmusicBB = { 
bf'8. a'16 g'8 ef'' d'' c'' 
bf'8. a'16 g'4 \fermata r8 g'16 g'16 
}

sopmusicC = {\mark \default
bf'2. \fermata
c''8-> (bf'8) c''-> (bf') c''-> (bf')
g'4 g' g' 
c''8-> (bf'8) c''-> (bf') c''-> (bf')
g'4 g' g' 
ef''4 d''4. c''8 
d''8 d'' c''2 
bf'8. a'16 g'8 a' bf' c'' 
}

sopmusicCA = {
d''16 d''8. bf'4 g'8 r16 g'16
}

sopmusicCB = {
g'4 r4 r8 g'8
}

sopmusicD = {\mark \default
bf'8. d''16 c''4 c''4 
g'4 bf'2 
bf'8. d''16 c''4 g''8. g'16 
g'8. g'16 bf'2 
bf'16 bf'8. f'2 
\times 2/3 {bf'8 a' bf'} c''2 
bf'8. a'16 g'8 ef'' d'' c'' 
bf'8. a'16 g'2
}


%#################################### Melody ########################
melody = \transpose c c {
  \global
  \partial 8 d'8    %lead in notes
\sopmusicA 
\repeat volta 2 \sopmusicB \alternative {\sopmusicBA \sopmusicBB}
\repeat volta 2 \sopmusicC \alternative {\sopmusicCA \sopmusicCB}
\repeat volta 2 { \sopmusicD }

}
%################################# Lyrics #####################





%################################# Chords #######################

harmonies = \transpose c c \chordmode { 
g2.:m s2. s2. s2. bf2. s2. 
g2.:m7 s2. d2. s2. d2.:7 g2.:m
c2.:m g2.:m c2.:m g2.:m bf2. c2.:m
d2.:7 g2.:m d2.:7 g2.:m g2.:m c2.:m g2.:m
c2.:m g2.:m c2.:m d2. d2.:7 g2.:m g2.:m
c2.:m g2.:m c2.:m g2.:m bf2. c2.:m d2.:7 g2.:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      #(set-paper-size "letter")
      #(set-paper-size "letter")
	  s8
      \harmonies
    }
    \new Staff
    \melody
  >>


\header {
    title="Lerner's Freylach"
    subtitle="KMDMP 01-36-946"
    composer="Yekhiel Lerner of Kremenets"
	opus="Copyright Institute of Manuscripts, Vernadsky National Library of Ukraine, CC-BY 4.0, klezmerinstitute.org"
}

  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
